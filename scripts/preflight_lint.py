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
import json
import re
import sys
from pathlib import Path
from urllib.parse import unquote

sys.path.insert(0, str(Path(__file__).resolve().parent))
import tkb_version  # noqa: E402
import gen_menu  # noqa: E402

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
    for n, l in enumerate(text.splitlines(), 1):
        m = re.match(r"\s+title:\s*([^\s\"'].*)$", l)
        if m and ": " in m.group(1):
            errors.append(f"{cfg}:{n}: sidtitel med kolon utan citattecken ger YAML-felet 'Nested mappings are not allowed in compact mappings'")
    cs_urls = set()
    for f in (ig / "input" / "fsh").rglob("*.fsh"):
        cs_urls |= set(re.findall(r'\^url\s*=\s*"(https://fhir\.inera\.se/CodeSystem/[^"]+)"', f.read_text(encoding="utf-8")))
    for url in sorted(cs_urls):
        if url not in text:
            errors.append(f"{cfg}: CodeSystem-URL {url} saknas under special-url (ger RESOURCE_CANONICAL_MISMATCH)")


def registry_entry(ig: Path):
    reg = Path("contracts-registry.json")
    if not reg.exists():
        return None
    for d in json.loads(reg.read_text(encoding="utf-8"))["domains"]:
        if (d.get("output_dir") or "").rstrip("/") == str(ig).rstrip("/"):
            return d
    return None


def lint_versions(ig: Path, errors: list):
    """Versionsregeln (se skillen tkb-ig-builder, avsnittet Versioner)."""
    cfg = ig / "sushi-config.yaml"
    entry = registry_entry(ig)
    if not cfg.exists() or entry is None:
        return
    text = cfg.read_text(encoding="utf-8")
    m = re.search(r"^version:\s*\"?([^\s\"]+)", text, re.M)
    version = m.group(1) if m else None
    expected = entry.get("ig_version")
    if not expected:
        errors.append(f"{ig}: registret saknar ig_version — sätt source_tag/domain_version/ig_version med "
                      "scripts/registry_update.py och kör scripts/set_ig_version.py")
        return
    if entry.get("source_kind") == "tag" and entry.get("source_tag"):
        try:
            if tkb_version.semver(entry["source_tag"]) != expected:
                errors.append(f"{ig}: registrets ig_version {expected} följer inte taggen "
                              f"{entry['source_tag']} ({tkb_version.semver(entry['source_tag'])})")
        except ValueError as e:
            errors.append(f"{ig}: {e}")
    if version != expected:
        errors.append(f"{cfg}: version {version} ≠ registrets ig_version {expected} — kör scripts/set_ig_version.py {ig}")
    if not re.search(r"^\s+apply-version:\s*false", text, re.M):
        errors.append(f"{cfg}: apply-version måste vara false, annars skrivs kontraktens ^version över")
    for f in sorted((ig / "input" / "fsh").rglob("*.fsh")):
        for part in re.split(r"(?=^(?:Logical|CodeSystem|ValueSet|Invariant):\s*\S+)", f.read_text(encoding="utf-8"), flags=re.M):
            mm = re.match(r"(Logical|CodeSystem|ValueSet):\s*(\S+)", part)
            if mm and not re.search(r"^\* \^version\s*=", part, re.M):
                errors.append(f"{f}: {mm.group(1)} {mm.group(2)} saknar * ^version — kör scripts/set_ig_version.py {ig}")


def lint_pages(ig: Path, errors: list, warnings: list):
    pages = ig / "input" / "pagecontent"
    images = ig / "input" / "images"
    static = {p.name for p in images.iterdir()} if images.is_dir() else set()
    for name in sorted(static):
        if " " in name:
            warnings.append(f"{images}/{name}: mellanslag i filnamn — döp om innan filen länkas (check_links.py URL-avkodar inte)")
    page_names = {p.stem + ".html" for p in pages.glob("*.md")} | {"artifacts.html", "index.html"}
    resources = ig / "fsh-generated" / "resources"  # finns bara efter en lokal sushi-körning
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
                if re.search(r"\.(tiff?|emf|wmf)$", path, re.I) and line.lstrip().startswith("!["):
                    errors.append(f"{f}:{n}: bild i format som webbläsare inte visar '{path}' — konvertera till PNG/SVG (se tkb-fetch-convert)")
                    continue
                if "%20" in path or " " in path:
                    errors.append(f"{f}:{n}: länk med mellanslag/%20 '{path}' — döp om filen utan mellanslag")
                    continue
                if path.endswith(".html"):
                    if path not in page_names and not re.match(r"^(StructureDefinition|CodeSystem|ValueSet|Extension)-", path):
                        warnings.append(f"{f}:{n}: länk till okänd sida '{path}'")
                    elif resources.is_dir() and re.match(r"^(StructureDefinition|CodeSystem|ValueSet)-", path) \
                            and not (resources / (path[:-5] + ".json")).exists():
                        errors.append(f"{f}:{n}: länk till artefakt '{path}' som SUSHI inte genererar (t.ex. en tom svarsmodell)")
                    continue
                if unquote(path) not in static:
                    errors.append(f"{f}:{n}: länkmål '{path}' finns inte i input/images/")
            if line.lstrip().startswith("|"):
                for m in RE_RAW_TAG.finditer(re.sub(r"`[^`]*`", "", line)):
                    tag = m.group(1).split("/")[0].lower()
                    if tag not in {"br", "b", "i", "em", "strong", "sub", "sup", "p", "ul", "li", "ol", "code"}:
                        warnings.append(f"{f}:{n}: rå <{m.group(1)}> i tabellcell — slå in i backticks (kan förstöra efterföljande rubriker)")
            if re.match(r"^#{1,6}[^#\s]", line):
                errors.append(f"{f}:{n}: rad som börjar med '#' utan mellanslag ('{line[:12]}') blir en rubrik i kramdown — skriv '\\#' (t.ex. regelnumret '#1' i TKB:ns Övriga regler)")
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


def lint_overview(ig: Path, errors: list):
    """index.md ska ha landningssidans struktur (se tkb-ig-builder, "index.md")."""
    idx = ig / "input" / "pagecontent" / "index.md"
    if not idx.exists():
        errors.append(f"{idx}: saknas")
        return
    text = idx.read_text(encoding="utf-8")
    for heading in ("## Översikt", "## Innehåll"):
        if not re.search(rf"^{heading}\s*$", text, re.M):
            errors.append(f"{idx}: rubriken '{heading}' saknas (build_portal.py lägger landningssidans fakta under den)")
    if "<!-- landningssida:fakta" not in text:
        errors.append(f"{idx}: landningssidans faktablock saknas — kör scripts/build_portal.py och checka in resultatet")
    contracts = []
    meta = ig / "domain-metadata.json"
    if meta.exists():
        contracts = [c.get("id") for c in json.loads(meta.read_text(encoding="utf-8")).get("contracts") or []]
    if not contracts:
        contracts = [c.get("id") for c in (registry_entry(ig) or {}).get("contracts") or []]
    linked = {m.lower() for m in re.findall(r"\[`?([A-Za-z]\w*)`?\]\([\w-]*tjanstekontrakt\.html#[\w-]+\)", text)}
    for c in contracts:
        if c and c.removesuffix("Interaction").lower() not in linked:
            errors.append(f"{idx}: kontraktet {c} saknar länk [{c}](7-tjanstekontrakt.html#{c.lower()}) i översiktens "
                          "kontraktstabell (portalen länkar kontraktet via den)")


def lint_menu(ig: Path, errors: list):
    """Menyn ska vara exakt den som scripts/gen_menu.py skriver (se tkb-ig-builder, avsnittet Meny)."""
    if not (ig / "sushi-config.yaml").exists():
        return
    chapters, contracts = gen_menu.menu_items(ig)
    menu = ig / "input" / "includes" / "menu.xml"
    if not menu.exists() or menu.read_text(encoding="utf-8") != gen_menu.render_xml(chapters, contracts):
        errors.append(f"{menu}: menyn avviker från standardmenyn (t.ex. <menu>/<item>, class=\"nav-tabs\" eller "
                      f"<?xml?>-deklaration ger trasig navigering) — kör scripts/gen_menu.py {ig}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("dirs", nargs="*")
    ap.add_argument("--all", action="store_true")
    args = ap.parse_args()
    dirs = sorted([*Path("igs").glob("TKB_*"), *Path("igs").glob("TKB_*/versions/*")]) if args.all else [Path(d.rstrip("/")) for d in args.dirs]
    if not dirs:
        ap.error("ange minst en IG-katalog eller --all")
    total_err = 0
    for ig in dirs:
        if not (ig / "sushi-config.yaml").exists() and args.all:
            continue
        errors, warnings = [], []
        lint_config(ig, errors)
        lint_versions(ig, errors)
        lint_fsh(ig, errors, warnings)
        lint_pages(ig, errors, warnings)
        lint_overview(ig, errors)
        lint_menu(ig, errors)
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
