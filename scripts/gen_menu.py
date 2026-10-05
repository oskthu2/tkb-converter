#!/usr/bin/env python3
"""
gen_menu.py — skriver IG:ns navigeringsmeny från sidlistan i sushi-config.yaml.

Användning:
    scripts/gen_menu.py igs/TKB_x [igs/TKB_y ...]
    scripts/gen_menu.py --all
    scripts/gen_menu.py --check --all     # exit 1 om någon meny avviker

Menyn har samma form i alla TKB-IG:ar (se skillen tkb-ig-builder, avsnittet Meny):

    Hem | Kapitel ▾ | Tjänstekontrakt | Artefakter

"Kapitel" är en dropdown med TKB:ns alla numrerade kapitel i sidordning, med
fullständiga rubriker. "Tjänstekontrakt" pekar på kapitlet som beskriver
kontrakten (oftast 7-tjanstekontrakt.html). Skriptet skriver både
input/includes/menu.xml (som IG Publisher använder) och `menu:` i
sushi-config.yaml (så att de två inte glider isär).
"""

import argparse
import re
import sys
from html import escape
from pathlib import Path

import yaml


def menu_items(ig: Path):
    cfg = yaml.safe_load((ig / "sushi-config.yaml").read_text(encoding="utf-8"))
    chapters = []
    for page, meta in (cfg.get("pages") or {}).items():
        if page == "index.md" or not re.match(r"^\d+-", page):
            continue
        title = (meta or {}).get("title") or page
        chapters.append((str(title), Path(page).stem + ".html"))
    contracts = next((url for _, url in chapters if url.endswith("-tjanstekontrakt.html")), None)
    return chapters, contracts


def render_xml(chapters, contracts) -> str:
    li = lambda title, url, ind: f'{ind}<li><a href="{escape(url)}">{escape(title)}</a></li>'
    lines = ['<ul xmlns="http://www.w3.org/1999/xhtml" class="nav navbar-nav">',
             li("Hem", "index.html", "  ")]
    if chapters:
        lines += ['  <li class="dropdown">',
                  '    <a data-toggle="dropdown" href="#" class="dropdown-toggle">Kapitel<b class="caret"> </b></a>',
                  '    <ul class="dropdown-menu">']
        lines += [li(t, u, "      ") for t, u in chapters]
        lines += ['    </ul>', '  </li>']
    if contracts:
        lines.append(li("Tjänstekontrakt", contracts, "  "))
    lines += [li("Artefakter", "artifacts.html", "  "), "</ul>", ""]
    return "\n".join(lines)


def yaml_key(s: str) -> str:
    return f'"{s}"' if re.search(r"[:#]", s) else s


def render_config_menu(chapters, contracts) -> str:
    lines = ["menu:", "  Hem: index.html"]
    if chapters:
        lines.append("  Kapitel:")
        lines += [f"    {yaml_key(t)}: {u}" for t, u in chapters]
    if contracts:
        lines.append(f"  Tjänstekontrakt: {contracts}")
    lines.append("  Artefakter: artifacts.html")
    return "\n".join(lines) + "\n"


def replace_config_menu(text: str, block: str) -> str:
    # `menu:` och alla indragna/tomma rader fram till nästa toppnivånyckel.
    pat = re.compile(r"^menu:[^\n]*\n(?:(?:[ \t]+[^\n]*|[ \t]*)\n)*", re.M)
    if pat.search(text):
        return pat.sub(lambda m: block + "\n", text, count=1)
    return text.rstrip("\n") + "\n\n" + block


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("dirs", nargs="*")
    ap.add_argument("--all", action="store_true")
    ap.add_argument("--check", action="store_true", help="ändra inget, avsluta med 1 vid avvikelse")
    args = ap.parse_args()
    dirs = sorted(Path("igs").glob("TKB_*")) if args.all else [Path(d.rstrip("/")) for d in args.dirs]
    if not dirs:
        ap.error("ange minst en IG-katalog eller --all")
    stale = 0
    for ig in dirs:
        cfg = ig / "sushi-config.yaml"
        if not cfg.exists():
            continue
        chapters, contracts = menu_items(ig)
        xml_path = ig / "input" / "includes" / "menu.xml"
        xml = render_xml(chapters, contracts)
        cfg_text = cfg.read_text(encoding="utf-8")
        new_cfg = replace_config_menu(cfg_text, render_config_menu(chapters, contracts))
        old_xml = xml_path.read_text(encoding="utf-8") if xml_path.exists() else None
        if old_xml == xml and cfg_text == new_cfg:
            continue
        stale += 1
        if args.check:
            print(f"[menu] {ig.name}: menyn avviker — kör scripts/gen_menu.py {ig}")
            continue
        xml_path.parent.mkdir(parents=True, exist_ok=True)
        xml_path.write_text(xml, encoding="utf-8")
        cfg.write_text(new_cfg, encoding="utf-8")
        print(f"[menu] {ig.name}: skriven ({len(chapters)} kapitel)")
    sys.exit(1 if args.check and stale else 0)


if __name__ == "__main__":
    main()
