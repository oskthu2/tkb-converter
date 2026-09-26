#!/usr/bin/env python3
"""Konvertera en PDF-specifikation (t.ex. Ineras "Pascal – Gränssnittsspecifikation") till Markdown.

    scripts/pdf_spec_to_md.py <fil.pdf> <ut.md> [--heading-level N] [--images DIR --image-prefix NAMN]

Används för domäner som saknar TKB men har en PDF per tjänstekontrakt
(t.ex. druglogistics.dosedispensing). Texten tas ut med pypdf i layoutläge:

* Försättsbladet (sida 1) och sidhuvud/sidfot på varje sida tas bort.
* Innehållsförteckningens poster blir rubriker; själva förteckningen tas bort.
* Tabeller känns igen på kolumnluckor och delas upp i kolumner efter rubrikradens
  positioner. Rader utan värde i första kolumnen läggs ihop med raden ovanför.
  En tabell som fortsätter på nästa sida får samma kolumner.
* Övrig text blir stycken, och punkttecknet "" blir en punktlista. Ord som layoutläget
  har delat med en lucka mitt i ("gränssn   ittet") sätts ihop igen.
* Med --images sparas sidornas bilder (figurer) i DIR som NAMN-1.jpg … och länkas efter
  texten på den sida där de står. Försättsbladets bilder och bilder som upprepas på flera
  sidor (logotypen) hoppas över. Kräver Pillow.
  Figurer som är ritade som vektorgrafik (t.ex. processdiagram, känns igen på kurvor) renderas
  till PNG med PyMuPDF om det är installerat; annars skrivs en varning ut.

Resultatet är en mekanisk konvertering. Granska tabeller med ovanlig layout mot PDF:en.
"""
import argparse
import re
import sys

sys.modules.setdefault("cryptography", None)  # systemets cryptography-bindning kan vara trasig; pypdf klarar sig utan
import pypdf  # noqa: E402

TOKEN = re.compile(r"\S+(?: \S+)*")
TOC = re.compile(r"^\s*(.+?)\s*\.{5,}\s*\d+\s*$")
FOOTER = re.compile(r"^\s*Inera ?AB\b")
BULLET = ""
HEADER_WORDS = ("Attribut", "Värde", "Version", "Definition", "Meddelandetyp", "Kod", "Felkod")


def tokens(line):
    """(position, text) för varje textstycke; stycken skiljs åt av minst två mellanslag."""
    return [(m.start(), m.group()) for m in TOKEN.finditer(line)]


def has_gap(line):
    return len(tokens(line.strip())) > 1


def page_body(text):
    lines = text.splitlines()
    # Sidfoten börjar med "Inera AB"/"IneraAB".
    for i, l in enumerate(lines):
        if FOOTER.match(l):
            lines = lines[:i]
            break
    # Sidhuvudet är de första icke-tomma raderna fram till första tomrad. Dess första rad
    # returneras också: den står på samma ställe på varje sida och används för att räkna om
    # tabellkolumner mellan sidor (layoutläget skalar varje sida olika).
    i = 0
    while i < len(lines) and not lines[i].strip():
        i += 1
    ref = [p for p, _ in tokens(lines[i])] if i < len(lines) else []
    while i < len(lines) and lines[i].strip():
        i += 1
    return ref, lines[i:]


def remap(cols, ref_from, ref_to):
    """Räkna om kolumnpositioner linjärt från en sidas sidhuvud till nästa sidas."""
    if len(ref_from) < 2 or len(ref_from) != len(ref_to):
        return cols
    a0, a1, b0, b1 = ref_from[0], ref_from[-1], ref_to[0], ref_to[-1]
    k = (b1 - b0) / (a1 - a0) if a1 != a0 else 1
    return [round(b0 + (c - a0) * k) for c in cols]


SPLIT_TAIL = re.compile(r"[a-zåäö][A-ZÅÄÖ][A-Za-zåäöÅÄÖ]*$")
SPLIT_HEAD = re.compile(r"^([a-zåäö]{1,8})\b")
NOT_TAIL = {"se", "och", "eller", "om", "för", "i", "på", "av", "till", "med"}


def join(a, b):
    """Slå ihop två textrader i samma cell. Ett typnamn som brutits mitt i ordet i en smal
    kolumn ("BehorighetsinfoReq" / "uest") sätts ihop utan mellanslag."""
    if not a or not b:
        return (a + b).strip()
    m = SPLIT_HEAD.match(b)
    if (SPLIT_TAIL.search(a) and m and m.group(1) not in NOT_TAIL
            and not a.endswith(("Response", "Request", "Type", "Enum"))):
        return a + b
    return a + " " + b


def md_cell(s):
    return s.replace("|", "\\|").strip()


class Table:
    def __init__(self, header_line):
        self.cols = [p for p, _ in tokens(header_line)]
        self.head = [t for _, t in tokens(header_line)]
        self.rows = []
        self.pending = None

    def col_of(self, pos):
        best = 0
        for i, c in enumerate(self.cols):
            if pos >= c - 3:
                best = i
        return best

    def add(self, line, header_cont=False):
        cells = [""] * len(self.cols)
        for p, t in tokens(line):
            i = self.col_of(p)
            cells[i] = join(cells[i], t)
        if header_cont:
            self.head = [join(h, c) for h, c in zip(self.head, cells)]
            return
        new_row = not self.rows or (cells[0] and (any(cells[1:]) or not self.rows[-1][0] or self.pending))
        if not cells[0] and not cells[1] and any(cells[2:]):
            # Bara värden (längd, förekomst …): PDF:en centrerar dem ofta vertikalt, så de kan stå
            # raden ovanför det namn de hör till. Avgörs när nästa rad kommer.
            self.resolve_pending()
            self.pending = cells
            return
        if new_row:
            if self.pending and all(not cells[i] for i, v in enumerate(self.pending) if v):
                cells = [join(a, b) for a, b in zip(cells, self.pending)]
                self.pending = None
            self.resolve_pending()
            self.rows.append(cells)
        else:
            self.resolve_pending()
            self.merge(cells)

    def merge(self, cells):
        self.rows[-1] = [join(a, b) for a, b in zip(self.rows[-1], cells)]

    def resolve_pending(self):
        if self.pending:
            self.merge(self.pending)
            self.pending = None

    def md(self):
        self.resolve_pending()
        out = ["| " + " | ".join(md_cell(h) for h in self.head) + " |",
               "| " + " | ".join(":---" for _ in self.head) + " |"]
        out += ["| " + " | ".join(md_cell(c) for c in r) + " |" for r in self.rows]
        return out


WORD = re.compile(r"[A-Za-zÅÄÖåäö]+")


def prose(line, words):
    """En rad löptext. En lucka mitt i ett ord ("gränssn   ittet") är en layoutrest och tas bort.
    Det avgörs av att högerdelen inte förekommer som eget ord i dokumentet (words) och att
    vänsterdelen inte är ett kort ord ("att   söka" ska inte bli ett ord)."""
    parts = [t for _, t in tokens(line)]
    out = parts[0] if parts else ""
    for t in parts[1:]:
        left = WORD.findall(out)[-1:] or [""]
        right = WORD.match(t)
        if (out[-1:].islower() and right and t[:1].islower() and len(left[0]) >= 4
                and right.group().lower() not in words):
            out += t
        else:
            out += " " + t
    return out


def page_images(reader, pdf, images_dir, prefix):
    """{sidindex: [filnamn]} för figurerna i dokumentet, numrerade i sidordning."""
    import collections
    import hashlib
    import os
    os.makedirs(images_dir, exist_ok=True)
    count = collections.Counter()
    found = []
    for i, page in enumerate(reader.pages):
        if i == 0:
            continue
        for im in page.images:
            h = hashlib.md5(im.data).hexdigest()
            count[h] += 1
            found.append((i, h, im))
    figs = []  # (sida, filändelse, funktion som skriver filen)
    for i, h, im in found:
        if count[h] == 1:
            ext = os.path.splitext(im.name)[1].lower() or ".png"
            figs.append((i, ".jpg" if ext == ".jpeg" else ext,
                         lambda path, data=im.data: open(path, "wb").write(data)))
    # Vektorritade figurer: rendera området med ritobjekten (utom sidhuvud och sidfot).
    try:
        import pymupdf
    except ImportError:
        pymupdf = None
        print("[pdf_spec_to_md] PyMuPDF saknas: vektorritade figurer tas inte med", file=sys.stderr)
    if pymupdf is not None:
        for i, page in enumerate(pymupdf.open(pdf)):
            if i == 0:
                continue
            h = page.rect.height
            drawings = [d for d in page.get_drawings() if 0.08 * h < d["rect"].y0 and d["rect"].y1 < 0.92 * h]
            if not any(it[0] == "c" for d in drawings for it in d["items"]):
                continue
            clip = pymupdf.Rect()
            for d in drawings:
                clip |= d["rect"]
            pix = page.get_pixmap(dpi=150, clip=clip + (-4, -4, 4, 4))
            figs.append((i, ".png", lambda path, pix=pix: pix.save(path)))
    result = {}
    for n, (i, ext, write) in enumerate(sorted(figs, key=lambda f: f[0]), start=1):
        name = f"{prefix}-{n}{ext}"
        write(os.path.join(images_dir, name))
        result.setdefault(i, []).append(name)
    return result


def convert(pdf, level, images_dir=None, prefix=None):
    reader = pypdf.PdfReader(pdf)
    pages = [p.extract_text(extraction_mode="layout") for p in reader.pages]
    figs = page_images(reader, pdf, images_dir, prefix) if images_dir else {}
    title = " ".join(l.strip() for l in pages[0].splitlines() if l.strip())
    headings, out, para, table, last_ref = [], [], [], None, None
    words = {w.lower() for text in pages for l in text.splitlines()
             for _, t in tokens(l) for w in WORD.findall(t)[1:-1]}  # hela ord, inte styckenas kanter
    pending_figs = []
    body_pages = []
    for idx, text in enumerate(pages[1:], start=1):
        ref, body = page_body(text)
        toc = [TOC.match(l).group(1).strip() for l in body if TOC.match(l)]
        if toc:
            headings += toc
            continue
        body_pages.append((ref, body, figs.get(idx, [])))

    def flush_para():
        if para:
            txt = " ".join(para)
            txt = re.sub(r"\s+", " ", txt).strip()
            out.extend([txt, ""])
            para.clear()

    def flush_figs():
        nonlocal fig_no
        for f in pending_figs:
            fig_no += 1
            out.extend([f"![Figur {fig_no}]({f})", ""])
        pending_figs.clear()

    def flush_table():
        nonlocal table
        if table is not None:
            out.extend(table.md() + [""])
            table = None

    hset = {h: h for h in headings}
    fig_no = 0
    for ref, body, page_figs in body_pages:
        nonblank = [l for l in body if l.strip()]
        if not nonblank and not page_figs:
            continue
        if not nonblank:
            nonblank = [" "]
        margin = min(len(l) - len(l.lstrip()) for l in nonblank)
        if table is not None and last_ref is not None:
            table.cols = remap(table.cols, last_ref, ref)
        last_ref = ref
        prev_header = False
        for line in body:
            s = line.strip()
            if not s:
                flush_para()
                prev_header = False
                continue
            indent = len(line) - len(line.lstrip())
            if s in hset:
                flush_para()
                flush_table()
                flush_figs()
                out.extend(["#" * level + " " + s, ""])
                continue
            if s.startswith(BULLET):
                flush_table()
                flush_para()
                out.append("* " + s[1:].strip())
                continue
            if out and out[-1].startswith("* ") and indent > margin + 3 and not has_gap(line):
                out[-1] += " " + s  # fortsättning på punkt
                continue
            # Löptext: första textstycket är längre än en tabellcell brukar vara.
            gap = has_gap(line) and len(tokens(s)[0][1]) <= 35
            if table is None and gap and (s.split()[0] in HEADER_WORDS or not para):
                flush_para()
                if out and out[-1] != "":
                    out.append("")
                table = Table(line)
                prev_header = True
                continue
            # Kort rad utan kolumnlucka i första kolumnen: fortsättning på radens namn ("Betalningsansvarig" / "fornamn").
            first_col = table is not None and abs(indent - table.cols[0]) <= 3 and len(s) < 40
            if table is not None and (gap or indent > margin + 3 or first_col):
                # Raden direkt under rubrikraden utan värde i första kolumnen fortsätter rubriken ("Max" / "längd").
                header_cont = prev_header and tokens(line)[0][0] > table.cols[0] + 3
                table.add(line, header_cont)
                prev_header = header_cont
                continue
            flush_table()
            if out and out[-1].startswith("* "):
                out.append("")
            para.append(prose(s, words))
        flush_para()
        # Figuren länkas före nästa rubrik, så att en tabell som fortsätter på nästa sida inte bryts.
        pending_figs.extend(page_figs)
    flush_table()
    flush_figs()
    md = "\n".join(out)
    md = re.sub(r"\n{3,}", "\n\n", md).strip() + "\n"
    return title, md


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("pdf")
    ap.add_argument("out")
    ap.add_argument("--heading-level", type=int, default=4)
    ap.add_argument("--images", help="katalog för figurerna (t.ex. input/images)")
    ap.add_argument("--image-prefix", help="filnamnsprefix för figurerna")
    a = ap.parse_args()
    title, md = convert(a.pdf, a.heading_level, a.images, a.image_prefix)
    open(a.out, "w").write(md)
    print(f"[pdf_spec_to_md] {a.pdf} -> {a.out} ({title})")


if __name__ == "__main__":
    main()
