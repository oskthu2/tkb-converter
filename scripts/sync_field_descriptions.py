#!/usr/bin/env python3
"""
sync_field_descriptions.py — för in TKB:ns fälttabeller i FSH-modellernas
elementbeskrivningar.

Källan är tabellerna under "Fältregler" i input/pagecontent/7-tjanstekontrakt.md
(kolumnerna Namn / Typ / Beskrivning / Kardinalitet, plus ev. extrakolumner som
Kodverk eller Mappning), reglerna i "Övriga regler" som raderna hänvisar till,
och tabellerna för gemensamma informationskomponenter (t.ex. OrgUnitType) i
alla sidor under input/pagecontent/.

För varje Logical-modell skrivs en genererad RuleSet till
input/fsh/field-descriptions/<Modell>FieldDescriptions.fsh med
  * <element> ^definition = "<Beskrivning ur tabellen>"
  * <element> ^comment    = "<TKB-fält, typ, kardinalitet, regler, extrakolumner,
                             ev. tidigare modellanteckning>"
och modellen får raden `* insert <Modell>FieldDescriptions` sist. Den
handskrivna FSH:en lämnas i övrigt orörd (^short behålls).

Användning:
    scripts/sync_field_descriptions.py igs/TKB_x [igs/TKB_y ...]
    scripts/sync_field_descriptions.py --all
    scripts/sync_field_descriptions.py --check igs/TKB_x   # exit 1 om inaktuell
    scripts/sync_field_descriptions.py --report igs/TKB_x  # visa omatchade rader

Skriptet är idempotent. Kör om det efter varje ändring i fälttabellen eller i
modellens elementstruktur.
"""

import argparse
import re
import sys
import unicodedata
from dataclasses import dataclass, field
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GEN_DIR = "field-descriptions"
GEN_HEADER = (
    "// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i\n"
    "// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.\n"
)
INSERT_COMMENT = "// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)"

RE_HEADING = re.compile(r"^(#{1,6})\s+(.*?)\s*#*\s*$")
RE_LOGICAL = re.compile(r"^Logical:\s*(\S+)")
RE_ENTITY = re.compile(r"^(Logical|Profile|Extension|Instance|ValueSet|CodeSystem|Invariant|RuleSet|Mapping|Resource|Alias)\s*:")
RE_ELEMENT = re.compile(
    r"^(\s*)\*\s+([A-Za-z_][\w\-]*(?:\[[^\]]*\])?(?:\.[A-Za-z_][\w\-]*(?:\[[^\]]*\])?)*)\s+"
    r"(\d+)\.\.(\d+|\*)\s+([^\"]*?)\s*(?:\"((?:[^\"\\]|\\.)*)\"(?:\s+\"((?:[^\"\\]|\\.)*)\")?)?\s*$"
)
RE_ANY_RULE = re.compile(r"^(\s*)\*\s+(\S+)")
RE_REGEL = re.compile(r"\b(?:Regel|Regler|Rule|Rules)\s*:?\s*([0-9][0-9.]*[a-z]?(?:\s*(?:,|och|and|&|/)\s*[0-9][0-9.]*[a-z]?)*)", re.I)
RE_CARD = re.compile(r"^\s*(\d+|\*)\s*\.\.\s*(\d+|\*|n)\s*$", re.I)


# ─────────────────────────── Markdown ───────────────────────────

def split_row(line: str) -> list:
    s = line.strip()
    if s.startswith("|"):
        s = s[1:]
    if s.endswith("|") and not s.endswith("\\|"):
        s = s[:-1]
    # <br/> (radbrytning i cellen, se fix_md_tables.py) tolkas som den äldre separatorn " / "
    s = re.sub(r"\s*<br\s*/?>\s*", " / ", s)
    return [c.strip().replace("\\|", "|") for c in re.split(r"(?<!\\)\|", s)]


def is_sep(cells: list) -> bool:
    return all(re.fullmatch(r":?-{2,}:?", c.replace(" ", "")) or c == "" for c in cells) and any(cells)


@dataclass
class Table:
    heading_path: list  # [(level, text)]
    header: list
    rows: list
    line: int
    seen: list = field(default_factory=list)  # alla rubriker före tabellen


def read_tables(md: Path) -> list:
    tables, headings, seen = [], [], []
    lines = md.read_text(encoding="utf-8").splitlines()
    i = 0
    while i < len(lines):
        m = RE_HEADING.match(lines[i])
        if m:
            lvl = len(m.group(1))
            headings = [h for h in headings if h[0] < lvl] + [(lvl, m.group(2).strip())]
            seen.append((lvl, m.group(2).strip()))
            i += 1
            continue
        if lines[i].lstrip().startswith("|"):
            start = i
            raw = []
            while i < len(lines):
                ln = lines[i]
                if ln.lstrip().startswith("|"):
                    raw.append(ln)
                elif raw and not raw[-1].rstrip().endswith("|") and ln.strip():
                    raw[-1] += " / " + ln.strip()   # cell som fortsätter på nästa rad
                else:
                    break
                i += 1
            block = [split_row(r) for r in raw]
            if len(block) >= 2 and is_sep(block[1]):
                tables.append(Table(list(headings), block[0], block[2:], start + 1, list(seen)))
            continue
        i += 1
    return tables


def norm(s: str) -> str:
    s = unicodedata.normalize("NFKD", s)
    s = "".join(ch for ch in s if not unicodedata.combining(ch))
    return re.sub(r"[^a-z0-9]", "", s.lower())


def classify(header: list):
    """Returnerar kolumnindex för fälttabeller, annars None."""
    h = [norm(c) for c in header]
    name = next((i for i, c in enumerate(h) if c.startswith(("namn", "name", "element", "falt"))), None)
    desc = next((i for i, c in enumerate(h) if "beskrivning" in c or "kommentar" in c or c.startswith("description")), None)
    card = next((i for i, c in enumerate(h) if c.startswith(("kard", "mult", "card", "antal", "forekomst"))), None)
    typ = next((i for i, c in enumerate(h) if c in ("typ", "datatyp", "type", "datatype") or c.startswith("datatyp")), None)
    if name is None or desc is None or name == desc:
        return None
    if card is None and typ is None:
        return None
    extra = [i for i in range(len(header)) if i not in (name, desc, card, typ) and header[i].strip()]
    return {"name": name, "desc": desc, "card": card, "type": typ, "extra": extra}


def classify_rules(header: list):
    h = [norm(c) for c in header]
    rid = next((i for i, c in enumerate(h) if c in ("id", "regel", "regelid", "nr", "rule")), None)
    desc = next((i for i, c in enumerate(h) if "beskrivning" in c or c in ("regel", "description")), None)
    if rid is None or desc is None or rid == desc:
        return None
    if any(c.startswith(("kard", "mult")) for c in h):
        return None
    return rid, desc


# ─────────────────────────── Rader → sökvägar ───────────────────────────

@dataclass
class Row:
    segs: list
    raw_name: str
    typ: str
    desc: str
    card: str
    rules: list
    extra: list  # [(rubrik, värde)]
    mode: str  # request | response | None
    source: str  # t.ex. "fälttabell" eller "OrgUnitType"


def clean_name(cell: str):
    rules = []
    for m in RE_REGEL.finditer(cell):
        rules += [r.strip(" .") for r in re.split(r"\s*(?:,|och|and|&|/)\s*", m.group(1)) if r.strip(" .")]
    s = RE_REGEL.sub("", cell)
    s = re.sub(r"\*+[a-z]\)", "", s)          # fotnotsmarkörer som "*b)"
    s = s.replace("`", "").replace("**", "")
    s = re.sub(r"\s*/\s*$", "", s.strip())
    s = re.sub(r"\(.*?\)", "", s).strip()
    return s, rules


def name_to_path(name: str, stack: list):
    """Tolkar namnkolumnens hierarkinotation. Returnerar ny stack eller None."""
    s = name.strip()
    if not s:
        return None
    if "*:" in s or s.startswith(("//", ".//")):
        segs = re.findall(r"\*:\s*([A-Za-z_][\w\-]*)", s)
        if not segs:
            segs = [p for p in re.split(r"[/\s]+", s) if re.match(r"^[A-Za-z_]", p)]
        return segs or None
    # "../../x", ".. ..x", "..x", "- x", "> x"
    m = re.match(r"^((?:\.\./|\.\.\s*|[-–>]\s*)+)(.*)$", s)
    depth = 0
    if m:
        prefix, s = m.group(1), m.group(2)
        depth = len(re.findall(r"\.\.|[-–>]", prefix))
    s = re.sub(r"(?<=[\w.])\s+(?=[\w.])", "", s.strip()).strip("/")  # Word-radbrytning inne i namnet
    parts = [p for p in re.split(r"[./]", s) if p]
    parts = [re.sub(r"[^\w\-].*$", "", p) for p in parts]
    parts = [p for p in parts if re.match(r"^[A-Za-z_]", p)]
    if not parts:
        return None
    if depth == 0:
        return parts
    return stack[:depth] + parts


def mode_of(cells: list, idx: dict):
    first = cells[idx["name"]] if idx["name"] < len(cells) else ""
    others = [c for i, c in enumerate(cells) if i != idx["name"] and c and c != first]
    if others:
        return None
    n = norm(first)
    if n.startswith(("begaran", "request", "fraga", "anrop")):
        return "request"
    if n.startswith(("svar", "response")):
        return "response"
    return "section"


def heading_mode(text: str, contract: str = ""):
    n = norm(text)
    if n.startswith(("svar", "response")) or (n.endswith(("response", "responsetype", "svar")) and n.startswith(contract or "\0")):
        return "response"
    if n.startswith(("begaran", "request", "anrop", "fraga")) or (contract and n in (contract + "type", contract + "request", contract + "requesttype")):
        return "request"
    return None


def rows_from_table(t: Table, idx: dict, source: str, mode=None) -> list:
    out, stack = [], []
    for cells in t.rows:
        cells = cells + [""] * (len(t.header) - len(cells))
        mo = mode_of(cells, idx)
        if mo in ("request", "response"):
            mode, stack = mo, []
            continue
        if mo == "section":
            continue
        name, rules = clean_name(cells[idx["name"]])
        segs = name_to_path(name, stack)
        if not segs:
            continue
        stack = segs
        get = lambda k: cells[idx[k]].strip() if idx.get(k) is not None and idx[k] < len(cells) else ""
        extra = [(t.header[i].strip(), cells[i].strip()) for i in idx["extra"] if i < len(cells) and cells[i].strip()]
        out.append(Row(segs, cells[idx["name"]].strip(), get("type"), get("desc"), get("card"), rules, extra, mode, source))
    return out


# ─────────────────────────── FSH ───────────────────────────

@dataclass
class Elem:
    path: list
    line: int
    card: str
    typ: str
    short: str
    definition: str = ""


@dataclass
class Model:
    name: str
    file: Path
    start: int  # radindex för "Logical:"
    end: int    # radindex efter sista raden
    elems: list = field(default_factory=list)


def fsh_unescape(s: str) -> str:
    return re.sub(r"\\(.)", r"\1", s or "")


def parse_models(fsh: Path) -> list:
    lines = fsh.read_text(encoding="utf-8").splitlines()
    models, cur = [], None
    for i, line in enumerate(lines):
        if RE_ENTITY.match(line):
            if cur:
                cur.end = i
                models.append(cur)
                cur = None
            m = RE_LOGICAL.match(line)
            if m:
                cur = Model(m.group(1), fsh, i, len(lines))
    if cur:
        models.append(cur)
    for mdl in models:
        ctx = []  # [(indent, path)]
        i = mdl.start
        while i < mdl.end:
            line = lines[i]
            r = RE_ANY_RULE.match(line)
            if not r:
                i += 1
                continue
            indent = len(r.group(1))
            ctx = [c for c in ctx if c[0] < indent]
            parent = ctx[-1][1] if ctx else []
            tq = None
            if '"""' in line and RE_ELEMENT.match(line.split('"""')[0].rstrip()):
                tq = line.split('"""', 1)[1]
                line = line.split('"""')[0].rstrip()
            m = RE_ELEMENT.match(line)
            if m:
                path = parent + [re.sub(r"\[.*\]", "", p) for p in m.group(2).split(".")]
                e = Elem(path, i, f"{m.group(3)}..{m.group(4)}", m.group(5).strip(), fsh_unescape(m.group(6)))
                if tq is not None:
                    buf = [tq]
                    j = i
                    if '"""' in tq:
                        buf = [tq.split('"""')[0]]
                    else:
                        j += 1
                        while j < mdl.end and '"""' not in lines[j]:
                            buf.append(lines[j].strip())
                            j += 1
                        if j < mdl.end:
                            buf.append(lines[j].split('"""')[0].strip())
                    e.definition = "\n".join(b.strip() for b in buf).strip()
                elif m.group(7):
                    e.definition = fsh_unescape(m.group(7))
                elif i + 1 < mdl.end and lines[i + 1].strip().startswith('"""'):
                    j, buf = i + 1, [lines[i + 1].strip()[3:]]
                    if buf[0].rstrip().endswith('"""') and len(buf[0].strip()) >= 3:
                        buf = [buf[0].rstrip()[:-3]]
                    else:
                        j += 1
                        while j < mdl.end and '"""' not in lines[j]:
                            buf.append(lines[j].strip())
                            j += 1
                        if j < mdl.end:
                            buf.append(lines[j].split('"""')[0].strip())
                    e.definition = "\n".join(b for b in buf).strip()
                mdl.elems.append(e)
                ctx.append((indent, path))
            else:
                # "* elem ^x", "* elem obeys", "* elem from" — sätter också kontext
                tok = r.group(2)
                if not tok.startswith(("^", "insert", "obeys")) and re.match(r"^[A-Za-z_][\w.\-\[\]]*$", tok):
                    ctx.append((indent, parent + [re.sub(r"\[.*\]", "", p) for p in tok.split(".")]))
            i += 1
    return models


# ─────────────────────────── Matchning ───────────────────────────

# Namn som modellerna prefixar (reserverade i FHIR eller generiska datatypfält)
GENERIC = {"id", "text", "code", "status", "value", "name", "type", "version", "language", "meta",
           "extension", "root", "unit", "date", "time", "description", "comment", "identifier"}


def seg_match(t: str, f: str, ctx: set = frozenset()) -> int:
    """2 = exakt, 1 = prefixat namn (id → recordId), 0 = ingen träff.

    Ett prefixat namn godtas bara för generiska namn, eller när prefixet är ett
    överliggande element eller en datatyp (signature.id → signatureId,
    patientId.extension → iiExtension)."""
    tn, fn = norm(t), norm(f)
    if not tn or not fn:
        return 0
    if tn == fn:
        return 2
    if fn.endswith(tn) and len(tn) >= 2:
        pre = fn[: -len(tn)]
        ctx = {c for c in ctx if c not in (fn, tn)}
        if tn in GENERIC or pre in ctx or any(c.startswith(pre) for c in ctx if len(pre) >= 2):
            return 1
    return 0


def score(row_segs: list, path: list, typ: str = ""):
    k, exact = 0, 0
    ctx = {norm(x) for x in list(row_segs) + list(path)} | {type_key(typ)}
    ctx.discard("")
    for a, b in zip(reversed(row_segs), reversed(path)):
        s = seg_match(a, b, ctx)
        if not s:
            break
        k += 1
        exact += s == 2
    return k, exact


def best_match(row: Row, cands: list, matched_paths: dict):
    n = len(row.segs)
    scored = []
    for e in cands:
        k, ex = score(row.segs, e.path, row.typ)
        if k == 0:
            continue
        full = k >= min(n, len(e.path))
        if not (full or k >= 2):
            continue
        scored.append((k, full, ex, e))
    if not scored:
        return None
    top = max(s[0] for s in scored)
    best = [s for s in scored if s[0] == top]
    if len(best) > 1:
        # Föredra kandidater vars förälder är radens matchade förälder
        par = matched_paths.get(tuple(row.segs[:-1]))
        if par is not None:
            nb = [s for s in best if s[3].path[:-1] == par]
            if nb:
                best = nb
    if len(best) > 1:
        topex = max(s[2] for s in best)
        best = [s for s in best if s[2] == topex]
    if len(best) > 1:
        shortest = min(len(s[3].path) for s in best)
        best = [s for s in best if len(s[3].path) == shortest]
    return best[0][3] if len(best) == 1 else None


# ─────────────────────────── Text ───────────────────────────

def md_text(s: str) -> str:
    s = s.strip()
    s = re.sub(r"\s+/\s+", "\n\n", s)
    # Råa <taggar> i backticks — annars tolkas de som HTML i IG Publisher
    s = re.sub(r"(?<!`)<(/?[A-Za-z][\w/:\-]*)>(?!`)", r"`<\1>`", s)
    # XPath-uttryck som //*:a/*:b i backticks så att * inte tolkas som markdown
    s = re.sub(r"(?<!`)((?:\.?//?)?\*:[\w\-]+(?:\s*/\s*\*:[\w\-]+)*)", lambda m: "`" + re.sub(r"\s+", "", m.group(1)) + "`", s)
    return s


def fsh_str(s: str) -> str:
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'


def redundant(old: str, ref: str) -> bool:
    """Sant om den gamla modelltexten i allt väsentligt redan finns i tabelltexten."""
    words = lambda x: {w for w in re.findall(r"\w+", x.lower()) if len(w) > 3}
    ow, rw = words(old), words(ref)
    if not ow:
        return True
    return len(ow & rw) / len(ow) >= 0.6 and not re.search(r"\b(ASSUME|TODO|SAKNAS|QUESTIONS)", old)


def build_comment(row: Row, rules: dict, elem: Elem) -> str:
    parts = []
    loc = f"`{re.sub(r'\s+', '', row.raw_name.split(' / ')[0]) if '*:' in row.raw_name else row.raw_name.split(' / ')[0].strip()}`"
    meta = ", ".join(x for x in (row.typ and f"`{row.typ.strip('`')}`", row.card and f"kardinalitet {row.card}") if x)
    where = "TKB-fält" if row.source == "fälttabell" else f"TKB-fält i {row.source}"
    parts.append(f"{where}: {loc}" + (f" ({meta})" if meta else "") + ".")
    tc = RE_CARD.match(row.card or "")
    if tc:
        tcard = f"{tc.group(1)}..{'*' if tc.group(2).lower() == 'n' else tc.group(2)}"
        if tcard != elem.card and tcard != "0..0":
            parts.append(f"Obs: modellen anger {elem.card} där TKB:n anger {tcard}.")
    for r in row.rules:
        txt = rules.get(r)
        parts.append(f"**Regel {r}:** " + (md_text(txt) if txt else "se Övriga regler för kontraktet."))
    for h, v in row.extra:
        parts.append(f"**{h}:** {md_text(v)}")
    old = "\n".join(l for l in elem.definition.strip().splitlines()
                    if not re.match(r"^\s*(Kardinalitet|Kard\.?|Multiplicitet)\s*:", l, re.I)).strip()
    if old and not redundant(old, elem.short + " " + row.desc):
        parts.append("**Modellanteckning:** " + old)
    return "\n\n".join(parts)


# ─────────────────────────── Per IG ───────────────────────────

def contract_of(table: Table, model_names: list):
    for lvl, text in reversed(table.seen):
        t = norm(re.sub(r"^[\d.]+\s*", "", text).split()[0] if text.split() else "")
        if not t:
            continue
        hits = [m for m in model_names if norm(m) == t or norm(m) == t + "request" or norm(m) == t + "response"]
        if hits:
            return t
    return None


def looks_like_type(head: str) -> bool:
    """Rubrik som namnger en datatyp, t.ex. OrgUnitType, CVType, JoL-header."""
    return bool(re.fullmatch(r"[A-Za-z][A-Za-z0-9_\-:]*", head)) and (
        bool(re.search(r"[A-Z]", head[1:])) or head.lower().endswith("type") or "-" in head)


def type_key(typ: str) -> str:
    t = typ.strip().split(":")[-1].strip()
    return norm(t)


def sync_ig(ig: Path, check: bool, report: bool = False, explain: bool = False, quiet: bool = False) -> tuple:
    pc = ig / "input" / "pagecontent"
    fshdir = ig / "input" / "fsh"
    md = pc / "7-tjanstekontrakt.md"
    if not md.exists() or not fshdir.exists():
        return [], []
    files = sorted(p for p in fshdir.rglob("*.fsh") if GEN_DIR not in p.parts)
    models = [m for f in files for m in parse_models(f)]
    if not models:
        return [], []
    names = [m.name for m in models]

    # Typtabeller (gemensamma informationskomponenter) från alla sidor
    type_tables, used_types, all_tables = {}, set(), []
    for p in sorted(pc.glob("*.md")):
        for t in read_tables(p):
            idx = classify(t.header)
            if idx:
                all_tables.append((t, idx))
                if idx["type"] is not None:
                    used_types |= {type_key(r[idx["type"]]) for r in t.rows if idx["type"] < len(r)}
    is_type_heading = lambda h: bool(re.fullmatch(r"[A-Za-z][\w\-:]*", h)) and (looks_like_type(h) or norm(h) in used_types)
    for t, idx in all_tables:
            if not t.heading_path:
                continue
            head = re.sub(r"^[\d.]+\s+", "", t.heading_path[-1][1]).strip()
            if not is_type_heading(head) or heading_mode(head):
                continue
            key = norm(head)
            if key not in type_tables:
                type_tables[key] = (head, rows_from_table(t, idx, head))

    tables = read_tables(md)
    by_contract, rules_by_contract = {}, {}
    for t in tables:
        c = contract_of(t, names)
        if not c:
            continue
        ri = classify_rules(t.header)
        if ri:
            for cells in t.rows:
                if len(cells) > max(ri):
                    m = re.match(r"^\s*([0-9][0-9.]*[a-z]?)", cells[ri[0]])
                    if m:
                        rules_by_contract.setdefault(c, {})[m.group(1).strip(".")] = cells[ri[1]]
            continue
        idx = classify(t.header)
        if not idx:
            continue
        head = t.heading_path[-1][1] if t.heading_path else ""
        hmode = heading_mode(head, c)
        # Typtabeller under kontraktets "Gemensamma informationskomponenter" hör inte till fälttabellen
        head = re.sub(r"^[\d.]+\s+", "", head).strip()
        if hmode is None and is_type_heading(head) and norm(head) in type_tables and norm(head) != c:
            continue
        by_contract.setdefault(c, []).extend(rows_from_table(t, idx, "fälttabell", hmode))

    assigned = {}  # model.name -> {tuple(path): (row, elem)}
    unmatched = []
    for c, rows in by_contract.items():
        req = [m for m in models if norm(m.name) == c + "request"]
        resp = [m for m in models if norm(m.name) in (c, c + "response")]
        matched_paths = {}
        for row in rows:
            pools = {"request": req, "response": resp}.get(row.mode) or (resp + req)
            cands = [(m, e) for m in pools for e in m.elems]
            e = best_match(row, [e for _, e in cands], matched_paths)
            if e is None:
                if norm(row.card) != "00":
                    unmatched.append(f"{c}: {row.raw_name}")
                continue
            mdl = next(m for m, x in cands if x is e)
            matched_paths[tuple(row.segs)] = e.path
            slot = assigned.setdefault(mdl.name, {})
            if tuple(e.path) not in slot:
                slot[tuple(e.path)] = (row, e, rules_by_contract.get(c, {}))

    # Barn till element av en gemensam typ (OrgUnitType m.fl.) fylls från typtabellen
    for mdl in models:
        slot = assigned.get(mdl.name, {})
        for path, (row, e, rules) in list(slot.items()):
            tk = type_key(row.typ)
            if tk not in type_tables:
                continue
            tname, trows = type_tables[tk]
            sub = [x for x in mdl.elems if x.path[: len(e.path)] == e.path and len(x.path) > len(e.path)]
            for tr in trows:
                tr2 = Row(list(e.path) + tr.segs, tr.raw_name, tr.typ, tr.desc, tr.card, tr.rules, tr.extra, None, tname)
                x = best_match(tr2, sub, {})
                if x is not None and tuple(x.path) not in slot:
                    slot[tuple(x.path)] = (tr2, x, rules)

    changed = []
    for mdl in models:
        slot = assigned.get(mdl.name)
        gen = fshdir / GEN_DIR / f"{mdl.name}FieldDescriptions.fsh"
        rs = f"{mdl.name}FieldDescriptions"
        if not slot:
            continue
        out = [GEN_HEADER, f"RuleSet: {rs}"]
        for e in mdl.elems:
            hit = slot.get(tuple(e.path))
            if not hit:
                continue
            row, _, rules = hit
            p = ".".join(e.path)
            if row.desc.strip():
                out.append(f"* {p} ^definition = {fsh_str(md_text(row.desc))}")
            out.append(f"* {p} ^comment = {fsh_str(build_comment(row, rules, e))}")
        text = "\n".join(out) + "\n"
        if not gen.exists() or gen.read_text(encoding="utf-8") != text:
            changed.append(gen)
            if not check:
                gen.parent.mkdir(parents=True, exist_ok=True)
                gen.write_text(text, encoding="utf-8")
        # Infoga insert-raden sist i modellen
        lines = mdl.file.read_text(encoding="utf-8").splitlines()
        cur = [m for m in parse_models(mdl.file) if m.name == mdl.name][0]
        block = lines[cur.start:cur.end]
        if not any(re.match(rf"^\*\s+insert\s+{re.escape(rs)}\s*$", b) for b in block):
            changed.append(mdl.file)
            if not check:
                end = cur.end
                while end > cur.start and not lines[end - 1].strip():
                    end -= 1
                lines[end:end] = ["", INSERT_COMMENT, f"* insert {rs}"]
                mdl.file.write_text("\n".join(lines) + "\n", encoding="utf-8")

    total = sum(len(m.elems) for m in models)
    covered = sum(len(v) for v in assigned.values())
    rel = ig.relative_to(ROOT) if ROOT in ig.resolve().parents else ig
    if quiet:
        return changed, unmatched
    print(f"{rel}: {covered}/{total} element har TKB-text, {len(unmatched)} tabellrader utan modellelement"
          + (f", {len(changed)} fil(er) {'inaktuella' if check else 'uppdaterade'}" if changed else ""))
    if explain:
        for m in models:
            for path, (row, e, _) in assigned.get(m.name, {}).items():
                print(f"   {row.source}: {row.raw_name[:70]!s:72} -> {m.name}.{'.'.join(path)}")
    if report:
        for u in unmatched:
            print(f"   rad utan element: {u}")
        for m in models:
            s = assigned.get(m.name, {})
            miss = [".".join(e.path) for e in m.elems if tuple(e.path) not in s]
            for x in miss:
                print(f"   element utan rad: {m.name}.{x}")
    return changed, unmatched


def all_igs() -> list:
    out = []
    for p in sorted((ROOT / "igs").glob("*/sushi-config.yaml")) + sorted((ROOT / "igs").glob("*/versions/*/sushi-config.yaml")):
        out.append(p.parent)
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("igs", nargs="*")
    ap.add_argument("--all", action="store_true")
    ap.add_argument("--check", action="store_true", help="ändra inget, exit 1 om något är inaktuellt")
    ap.add_argument("--report", action="store_true", help="lista omatchade rader och element")
    ap.add_argument("--explain", action="store_true", help="visa vilken tabellrad som hamnat på vilket element")
    a = ap.parse_args()
    targets = all_igs() if a.all else [Path(x).resolve() for x in a.igs]
    if not targets:
        ap.error("ange IG-kataloger eller --all")
    stale = 0
    for ig in targets:
        ch, _ = sync_ig(ig, a.check, a.report, a.explain)
        stale += len(ch)
    if a.check and stale:
        print("Fältbeskrivningarna är inaktuella — kör scripts/sync_field_descriptions.py", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
