#!/usr/bin/env python3
"""
preflight_lint.py — snabb, lokal kontroll av kända felmönster i en IG-katalog
innan push. Fångar det som annars kostar en CI-runda (~10–25 min).

Användning:
    scripts/preflight_lint.py igs/TKB_x [igs/TKB_y ...]
    scripts/preflight_lint.py --all

Avslutar med kod 1 om något fel hittas. Varningar påverkar inte exit-koden.
Varje kontroll motsvarar ett dokumenterat mönster i .claude/skills/
(tkb-fsh-model, tkb-ig-builder, tkb-ci-feedback).
"""

import argparse
import re
import sys
from pathlib import Path
from urllib.parse import unquote

# Kraschar bevisligen IG Publisher/SUSHI på alla nivåer (krockar med Element.id/extension):
RE_RESERVED_HARD = re.compile(r"(^\s*\*\s+|\.)(id|extension|modifierExtension|contained|implicitRules)\s+[0-9]+\.\.[0-9*]+")
# Konventionsbrott (prefixa!) men bygger empiriskt grönt när de ligger nästlat — varnas bara på rotnivå:
RE_RESERVED_SOFT = re.compile(r"^\*\s+(text|code|status|value|name|type|version|language|meta)\s+[0-9]+\.\.[0-9*]+")
RE_SUBEL_TYPE = re.compile(r"\.(system|use|assigner)\s+[0-9]+\.\.[0-9*]+\s+(string|integer|boolean|CodeableConcept)\b")
RE_RULE = re.compile(r"^(\s*)\*\s+([A-Za-z][\w\[\]]*(?:\.[A-Za-z][\w\[\]]*)*)\s")
RE_MD_LINK = re.compile(r"!?\[[^\]]*\]\(([^)\s]+)\)")
RE_RAW_TAG = re.compile(r"(?<!`)<(/?[A-Za-z][\w/]*)>(?!`)")
RE_INDEX_ANCHOR = re.compile(r"7-tjanstekontrakt\.html#([\w-]+)")


def slug(heading: str) -> str:
    """Approximerar kramdowns auto-id: gemener, bort med skiljetecken, mellanslag→bindestreck."""
    s = heading.strip().lower()
    s = re.sub(r"[^\w\- ]", "", s)
    return re.sub(r"\s+", "-", s).strip("-")


def lint_fsh(ig: Path, errors: list, warnings: list):
    for f in sorted((ig / "input" / "fsh").rglob("*.fsh")):
        rel = f.relative_to(ig.parent.parent) if ig.parent.parent in f.parents else f
        stack = []  # [(indent, fältnamn)]
        for n, line in enumerate(f.read_text(encoding="utf-8").splitlines(), 1):
            if re.search(r"\*\s+\^obeys", line):
                errors.append(f"{rel}:{n}: '^obeys' — obeys tar aldrig caret (skriv '* obeys id')")
            if "logical-models" in f.parts:
                if RE_RESERVED_HARD.search(line):
                    errors.append(f"{rel}:{n}: reserverat elementnamn (krockar med Element) — {line.strip()}")
                elif RE_RESERVED_SOFT.search(line):
                    warnings.append(f"{rel}:{n}: reserverat namn på rotnivå — prefixa enligt konvention: {line.strip()}")
                if RE_SUBEL_TYPE.search(line):
                    errors.append(f"{rel}:{n}: fel typ på inbyggt Identifier/Coding-subelement — {line.strip()}")
            m = RE_RULE.match(line)
            if not m:
                continue
            indent, path = len(m.group(1)), m.group(2)
            if path in ("obeys", "insert"):
                continue
            while stack and stack[-1][0] >= indent:
                stack.pop()
            if indent > 0 and "." in path and stack and path.split(".")[0] == stack[-1][1]:
                errors.append(f"{rel}:{n}: indrag + full punktnotation ('{path}' under '{stack[-1][1]}') "
                              "— SUSHI dubblerar prefixet; använd bara lövnamnet")
            stack.append((indent, path.split(".")[-1]))


def lint_config(ig: Path, errors: list):
    cfg = ig / "sushi-config.yaml"
    if not cfg.exists():
        errors.append(f"{ig}: sushi-config.yaml saknas")
        return
    text = cfg.read_text(encoding="utf-8")
    if any("se.inera.rivta.core" in l.split("#")[0] for l in text.splitlines()):
        errors.append(f"{cfg}: dependency se.inera.rivta.core — paketet finns inte publicerat, ta bort raden")
    cs_urls = set()
    for f in (ig / "input" / "fsh").rglob("*.fsh"):
        cs_urls |= set(re.findall(r'\^url\s*=\s*"(https://fhir\.inera\.se/CodeSystem/[^"]+)"', f.read_text(encoding="utf-8")))
    for url in sorted(cs_urls):
        if url not in text:
            errors.append(f"{cfg}: CodeSystem-URL {url} saknas under special-url (ger RESOURCE_CANONICAL_MISMATCH)")


def lint_pages(ig: Path, errors: list, warnings: list):
    pages = ig / "input" / "pagecontent"
    images = ig / "input" / "images"
    static = {p.name for p in images.iterdir()} if images.is_dir() else set()
    for name in sorted(static):
        if " " in name:
            warnings.append(f"{images}/{name}: mellanslag i filnamn — döp om innan filen länkas (check_links.py URL-avkodar inte)")
    page_names = {p.stem + ".html" for p in pages.glob("*.md")} | {"artifacts.html", "index.html"}
    for f in sorted(pages.glob("*.md")):
        in_code = False
        for n, line in enumerate(f.read_text(encoding="utf-8").splitlines(), 1):
            if line.lstrip().startswith("```"):
                in_code = not in_code
            if in_code:
                continue
            for target in RE_MD_LINK.findall(line):
                if re.match(r"^(https?:|mailto:|#|//)", target):
                    continue
                path = target.split("#")[0]
                if path.startswith(("images/", "files/")):
                    errors.append(f"{f}:{n}: länk med katalogprefix '{path}' — input/images/ publiceras platt, länka bara filnamnet")
                    continue
                if "%20" in path or " " in path:
                    errors.append(f"{f}:{n}: länk med mellanslag/%20 '{path}' — döp om filen utan mellanslag")
                    continue
                if path.endswith(".html"):
                    if path not in page_names and not re.match(r"^(StructureDefinition|CodeSystem|ValueSet|Extension)-", path):
                        warnings.append(f"{f}:{n}: länk till okänd sida '{path}'")
                    continue
                if unquote(path) not in static:
                    errors.append(f"{f}:{n}: länkmål '{path}' finns inte i input/images/")
            if line.lstrip().startswith("|"):
                for m in RE_RAW_TAG.finditer(re.sub(r"`[^`]*`", "", line)):
                    tag = m.group(1).split("/")[0].lower()
                    if tag not in {"br", "b", "i", "em", "strong", "sub", "sup", "p", "ul", "li", "ol", "code"}:
                        warnings.append(f"{f}:{n}: rå <{m.group(1)}> i tabellcell — slå in i backticks (kan förstöra efterföljande rubriker)")
            if re.match(r"^##\s+7\.\d+\s", line):
                warnings.append(f"{f}:{n}: kontraktsrubrik '{line.strip()}' — ska vara '### Kontraktsnamn' utan nummer (annars blir ankaret #71-...)")
    tk = pages / "7-tjanstekontrakt.md"
    idx = pages / "index.md"
    if tk.exists() and idx.exists():
        anchors = {slug(h) for h in re.findall(r"^#{2,4}\s+(.+)$", tk.read_text(encoding="utf-8"), re.M)}
        for n, line in enumerate(idx.read_text(encoding="utf-8").splitlines(), 1):
            for a in RE_INDEX_ANCHOR.findall(line):
                if a not in anchors:
                    errors.append(f"{idx}:{n}: ankare #{a} finns inte som rubrik i 7-tjanstekontrakt.md")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("dirs", nargs="*")
    ap.add_argument("--all", action="store_true")
    args = ap.parse_args()
    dirs = sorted(Path("igs").glob("TKB_*")) if args.all else [Path(d.rstrip("/")) for d in args.dirs]
    if not dirs:
        ap.error("ange minst en IG-katalog eller --all")
    total_err = 0
    for ig in dirs:
        if not (ig / "sushi-config.yaml").exists() and args.all:
            continue
        errors, warnings = [], []
        lint_config(ig, errors)
        lint_fsh(ig, errors, warnings)
        lint_pages(ig, errors, warnings)
        status = "OK" if not errors else f"{len(errors)} FEL"
        print(f"[preflight] {ig.name}: {status}, {len(warnings)} varning(ar)")
        for e in errors:
            print(f"  FEL  {e}")
        for w in warnings:
            print(f"  VARN {w}")
        total_err += len(errors)
    sys.exit(1 if total_err else 0)


if __name__ == "__main__":
    main()
