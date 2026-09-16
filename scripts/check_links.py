#!/usr/bin/env python3
"""
check_links.py — verifierar att interna bild- och länkreferenser i den
publicerade HTML-IG:n faktiskt pekar på existerande filer/ankare.

Bakgrund: IG Publishers egen qa.json/qa.html validerar FHIR-resurser
(StructureDefinitions, CodeSystems, etc.) — INTE om <img src="..."> eller
<a href="..."> i den faktiskt renderade HTML:n pekar på filer som verkligen
finns. Detta missade historiskt att bildlänkar i alla pagecontent-sidor
pekade fel (ett `images/`-prefix som IG Publisher plattar ut vid
publicering) i 29 av de första 31 migrerade domänerna — samtliga
rapporterade "0 errors, 0 warnings" i qa-errors.json trots att alla bilder
var trasiga (404) i den publicerade IG:n. Upptäckt 2026-09-16 genom att
direkt inspektera gh-pages-branchens innehåll. Se CLAUDE.md
"Publicerings-QA missar detta" och "Steg 4.7 — Publicerings-verifiering".

Körs per domän direkt efter IG Publisher, mot $IG_DIR/output/ (innan den
kopieras till sajtstaging), av scripts/build_ig.sh.

Användning:
    check_links.py --site-dir igs/TKB_x/output --domain x \
        --qa-json igs/TKB_x/ig-publisher-logs/qa-errors.json

Läser (om den finns) och skriver om den angivna qa-errors.json: nya fynd
läggs till under "issues.errors" (prefixade "[LINK-CHECK]"), och
summary/passed/top_issues räknas om. Trasiga bilder/länkar är alltid
riktiga fel (404 i produktion) — de läggs aldrig som "warnings".
"""

import argparse
import json
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import urlsplit

SKIP_PREFIXES = ("http://", "https://", "//", "mailto:", "tel:", "data:", "javascript:")


class LinkExtractor(HTMLParser):
    """Extraherar <img src>, <a href> och alla id/name-attribut ur en HTML-sida."""

    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.links = []  # [(kind, attr, raw_url), ...]
        self.ids = set()

    def handle_starttag(self, tag, attrs):
        attrs_d = dict(attrs)
        idv = attrs_d.get("id") or attrs_d.get("name")
        if idv:
            self.ids.add(idv)
        if tag == "img" and attrs_d.get("src"):
            self.links.append(("img", "src", attrs_d["src"]))
        elif tag == "a" and attrs_d.get("href"):
            self.links.append(("a", "href", attrs_d["href"]))

    handle_startendtag = handle_starttag


def is_local(url: str) -> bool:
    """True om url är en lokal fil-referens (inte extern, inte ren same-page-anchor)."""
    if not url or url.startswith("#"):
        return False
    return not url.lower().startswith(SKIP_PREFIXES)


def parse_html(path: Path) -> LinkExtractor:
    parser = LinkExtractor()
    try:
        parser.feed(path.read_text(encoding="utf-8", errors="replace"))
    except Exception:
        pass
    return parser


def check_site(site_dir: Path):
    broken_images, broken_links = [], []
    ids_cache: dict[Path, set] = {}

    def get_ids(path: Path) -> set:
        if path not in ids_cache:
            ids_cache[path] = parse_html(path).ids if path.suffix == ".html" and path.exists() else set()
        return ids_cache[path]

    for html_file in sorted(site_dir.rglob("*.html")):
        rel = html_file.relative_to(site_dir)
        parser = parse_html(html_file)

        for kind, attr, raw_url in parser.links:
            if not is_local(raw_url):
                continue
            split = urlsplit(raw_url)
            path_part, fragment = split.path, split.fragment
            target_file = html_file if not path_part else (html_file.parent / path_part).resolve()

            if not target_file.exists():
                label = "bild" if kind == "img" else "länk"
                msg = f'{rel}: trasig {label} — {attr}="{raw_url}" (mål saknas: {target_file.name})'
                (broken_images if kind == "img" else broken_links).append(msg)
                continue

            if fragment and target_file.suffix == ".html" and fragment not in get_ids(target_file):
                msg = f'{rel}: trasigt ankare — {attr}="{raw_url}" (id="{fragment}" finns inte i {target_file.name})'
                broken_links.append(msg)

    return broken_images, broken_links


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--site-dir", type=Path, required=True, help="Domänens IG Publisher output-katalog")
    ap.add_argument("--domain", required=True)
    ap.add_argument("--qa-json", type=Path, required=True, help="qa-errors.json att läsa/uppdatera")
    args = ap.parse_args()

    if not args.site_dir.exists():
        print(f"[check_links] {args.domain}: ingen site-dir ({args.site_dir}) — hoppar över")
        return

    broken_images, broken_links = check_site(args.site_dir)

    if args.qa_json.exists():
        doc = json.loads(args.qa_json.read_text(encoding="utf-8"))
    else:
        doc = {"domain_id": args.domain, "summary": {}, "issues": {}, "top_issues": []}

    issues = doc.setdefault("issues", {})
    for key in ("fatal", "errors", "warnings", "hints"):
        issues.setdefault(key, [])

    new_errors = [f"[LINK-CHECK] {m}" for m in broken_images + broken_links]
    for msg in new_errors:
        if msg not in issues["errors"]:
            issues["errors"].append(msg)

    s = doc.setdefault("summary", {})
    s["fatal"] = len(issues["fatal"])
    s["errors"] = len(issues["errors"])
    s["warnings"] = len(issues["warnings"])
    s["hints"] = len(issues["hints"])
    doc["passed"] = s["fatal"] == 0 and s["errors"] == 0

    doc["top_issues"] = (
        [f"[FATAL] {m}" for m in issues["fatal"][:5]] +
        [f"[ERROR] {m}" for m in issues["errors"][:10]] +
        [f"[WARN]  {m}" for m in issues["warnings"][:5]]
    )[:20]

    args.qa_json.parent.mkdir(parents=True, exist_ok=True)
    args.qa_json.write_text(json.dumps(doc, indent=2, ensure_ascii=False), encoding="utf-8")

    if new_errors:
        print(f"[check_links] {args.domain}: {len(broken_images)} trasiga bilder, {len(broken_links)} trasiga länkar/ankare")
        for m in new_errors[:20]:
            print(f"  {m}")
    else:
        print(f"[check_links] {args.domain}: inga trasiga bilder/länkar/ankare")


if __name__ == "__main__":
    main()
