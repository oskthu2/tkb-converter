#!/usr/bin/env python3
"""Gör Markdown-tabellerna i IG-sidorna läsbara (se tkb-ig-builder, "Tabeller").

TKB:ernas tabellceller har ofta flera stycken eller mjuka radbrytningar. Tidigare
konverteringar skrev dem som " / " mellan styckena, eller lät radbrytningen ligga
kvar som en rå ny rad mitt i tabellraden (vilket bryter kramdown-tabellen helt).
Skriptet normaliserar alla tabeller:

  1. En tabellrad som fortsätter på nästa rad slås ihop till en rad (radbrytningen blir <br/>).
  2. Styckeseparatorn " / " i en tabellcell blir <br/>.
  3. Rå <platshållare> i en tabellcell (t.ex. <huvuddomän>) slås in i backticks, så att
     kramdown inte tolkar dem som HTML-taggar.

Idempotent. Kör efter varje konvertering (docx_to_md.py gör det själv) och före push;
preflight_lint.py flaggar tabeller som inte är normaliserade.

    scripts/fix_md_tables.py igs/TKB_x [igs/TKB_y ...]
    scripts/fix_md_tables.py --all
    scripts/fix_md_tables.py --all --check     # ändra inget, exit 1 om något skulle ändras
"""
import argparse
import re
import sys
from pathlib import Path

BR = "<br/>"
# HTML som får finnas i tabellceller (övriga <ord> är platshållare ur TKB-texten)
ALLOWED_TAGS = {"br", "b", "i", "em", "strong", "sub", "sup", "p", "ul", "li", "ol", "code", "a", "span", "img", "wbr"}
RE_RAW_TAG = re.compile(r"(?<!`)<(/?[A-Za-zÅÄÖåäö][\wÅÄÖåäö.\-:]*)\s*/?>(?!`)")
RE_SLASH_BREAK = re.compile(r"[ \t ]+/[ \t ]+")


def _is_row_end(line: str) -> bool:
    s = line.rstrip()
    return s.endswith("|") and not s.endswith("\\|")


def _fix_cell_text(segment: str) -> str:
    """Ersätt styckeseparatorer och skydda platshållare i text utanför kodspann."""
    out = []
    for i, part in enumerate(re.split(r"(`[^`]*`)", segment)):
        if i % 2:  # kodspann `...`: orört
            out.append(part)
            continue
        part = RE_SLASH_BREAK.sub(BR, part)

        def tag(m):
            name = m.group(1).lstrip("/").split("/")[0].lower()
            return m.group(0) if name in ALLOWED_TAGS else f"`{m.group(0)}`"
        out.append(RE_RAW_TAG.sub(tag, part))
    return "".join(out)


def _fix_row(row: str) -> str:
    # Inledande "| " och avslutande " |" påverkas inte av ersättningen (inga " / " där).
    s = _fix_cell_text(row)
    s = re.sub(r"(?:\s*<br/>\s*)+", BR, s)                   # dubbla/inramade brytningar
    s = re.sub(r"(?<!\\)\|\s*<br/>", "| ", s)                      # cell som börjar med en brytning
    s = re.sub(r"<br/>\s*(?=\|(?:\s|$))", " ", s)             # cell som slutar med en brytning
    return s


def fix_text(text: str) -> str:
    lines = text.split("\n")
    out, i, in_code = [], 0, False
    while i < len(lines):
        ln = lines[i]
        if ln.lstrip().startswith("```"):
            in_code = not in_code
        if in_code or not ln.lstrip().startswith("|"):
            out.append(ln)
            i += 1
            continue
        row = ln.rstrip()
        j = i + 1
        if not _is_row_end(row):
            # Fortsättningsrader fram till radens avslutande "|" (tomma rader inom cellen tillåts,
            # men aldrig över en ny tabellrad, en rubrik eller fler än 60 rader).
            k, parts = j, []
            while k < len(lines) and k - j < 60 and not lines[k].lstrip().startswith(("|", "#")):
                if lines[k].strip():
                    parts.append(lines[k].strip())
                    if _is_row_end(lines[k]):
                        break
                k += 1
            if parts and _is_row_end(parts[-1]):
                row = row + BR + BR.join(parts)
                j = k + 1
        out.append(_fix_row(row))
        i = j
    return "\n".join(out)


def page_files(ig: Path):
    pc = ig / "input" / "pagecontent"
    return sorted(pc.glob("*.md")) if pc.is_dir() else []


def all_igs():
    root = Path(__file__).resolve().parent.parent / "igs"
    return sorted([*root.glob("*/"), *root.glob("*/versions/*/")])


def fix_ig(ig: Path, check: bool = False) -> list:
    changed = []
    for f in page_files(ig):
        old = f.read_text(encoding="utf-8")
        new = fix_text(old)
        if new != old:
            changed.append(f)
            if not check:
                f.write_text(new, encoding="utf-8")
    return changed


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("dirs", nargs="*")
    ap.add_argument("--all", action="store_true")
    ap.add_argument("--check", action="store_true")
    a = ap.parse_args()
    dirs = all_igs() if a.all else [Path(d) for d in a.dirs]
    if not dirs:
        ap.error("ange minst en IG-katalog eller --all")
    total = []
    for ig in dirs:
        total += fix_ig(ig, a.check)
    for f in total:
        print(("skulle ändra " if a.check else "ändrade ") + str(f))
    print(f"{len(total)} fil(er) {'behöver normaliseras' if a.check else 'normaliserade'}")
    sys.exit(1 if a.check and total else 0)


if __name__ == "__main__":
    main()
