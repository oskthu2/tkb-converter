#!/usr/bin/env python3
"""Generera ett kontrakts logiska modeller (FSH) direkt ur tjänstekontraktets XML-schema.

Modellerna följer schemat exakt (se tkb-fsh-model, "Datatyper enligt schemat"):

* Varje element har schemats namn, kardinalitet och ordning. Inga namnbyten: modellens
  nästlade element har typen Base (inte BackboneElement), så id, extension, type, code
  och value krockar inte med FHIR:s egna element.
* Grunddatatyper som är identiska med RIV-TA:s gemensamma datatyper (igs/rivta-datatyper,
  paket inera.rivta.datatypes) refereras dit: IIType, CVType, TimeStampType ... Enkla typer
  (xs:simpleType) blir `string` med en profil (`only TimeStampType`).
* En domäntyp med samma namn som en gemensam typ men snävare kardinalitet blir en lokal
  typ med samma namn som ärver den gemensamma (input/fsh/datatypes/). En domäntyp som
  skiljer sig på annat sätt definieras lokalt.
* Övriga sammansatta typer (HeaderType, LaboratoryOrderOutcomeBodyType ...) skrivs ut
  nästlat under elementet, så att TKB:ns fälttabell (som beskriver varje fält i sitt
  sammanhang) kan föras in på rätt element av sync_field_descriptions.py. Typnamnet ur
  schemat står i elementets ^short.
* Rekursiva typer blir contentReference. xs:choice blir en FHIRPath-invariant.
* Uppräkningar (xs:enumeration) blir code, bundet till domänens ValueSet om ett med
  typens namn finns (TypeOfResultCodeEnum -> TypeOfResultCodeVS).

    scripts/xsd_logical_models.py igs/TKB_x --contract GetLaboratoryOrderOutcome [--check]

Skriver om input/fsh/logical-models/{Kontrakt}.fsh (svaret) och {Kontrakt}Request.fsh
(begäran) men behåller filhuvudet (kommentarer, Logical/Id/Title/Description/
Characteristics) och `* insert …FieldDescriptions`. Kör sedan
scripts/sync_field_descriptions.py igs/TKB_x och scripts/set_ig_version.py igs/TKB_x.
"""
import argparse
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import rivta_datatypes as rd  # noqa: E402

XS = "{http://www.w3.org/2001/XMLSchema}"


OPENEHR = "http://schemas.openehr.org/v1"
FHIR_NS = "http://hl7.org/fhir"


def choice_prefix(model: str) -> str:
    """Prefix för genererade xs:choice-invarianter; id:t får vara högst 64 tecken."""
    return model.lower()[:52]


class Schema:
    """Typer och globala element i ett tjänsteschema och allt det importerar. Importer
    löses mot filnamnet i samma katalog (input/images är platt)."""

    def __init__(self, start: Path):
        self.types, self.elements, self.nsmap = {}, {}, {}
        todo, seen = [start], set()
        while todo:
            f = todo.pop()
            if f.name in seen or not f.exists():
                continue
            seen.add(f.name)
            ns = {}
            for _, (p, u) in ET.iterparse(f, events=["start-ns"]):
                ns.setdefault(p, u)
            root = ET.parse(f).getroot()
            tns = root.get("targetNamespace")
            self.nsmap[f.name] = (ns, tns)
            for imp in list(root.iter(f"{XS}import")) + list(root.iter(f"{XS}include")):
                if imp.get("schemaLocation"):
                    todo.append(start.parent / Path(imp.get("schemaLocation")).name)
            for c in root:
                n = c.get("name")
                if not n:
                    continue
                if c.tag in (f"{XS}complexType", f"{XS}simpleType"):
                    self.types.setdefault((tns, n), (c, f.name))
                elif c.tag == f"{XS}element":
                    self.elements.setdefault((tns, n), (c, f.name))

    def resolve(self, qname: str, fname: str):
        ns, tns = self.nsmap[fname]
        if ":" in qname:
            p, loc = qname.split(":", 1)
            uri = ns.get(p)
        else:
            loc, uri = qname, ns.get("", tns)
        return ("xs", loc) if uri == "http://www.w3.org/2001/XMLSchema" else (uri, loc)


def fsh_str(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"')


def doc_of(el) -> str:
    return rd.doc_of(el)


class Gen:
    def __init__(self, schema: Schema, ig: Path, model: str, model_id: str = None):
        self.S, self.ig, self.model = schema, ig, model
        self.model_id = model_id or model
        self.lines, self.invariants, self.local_types = [], [], {}
        self.vs = {p.stem for p in (ig / "input" / "fsh" / "valuesets").glob("*.fsh")}
        self.n_choice = 0

    # ── typer ──
    def type_ref(self, key, el, fname):
        """(kind, data) för ett elements typ: prim | global | local | enum | inline."""
        if key[0] == "xs":
            return "prim", rd.fhir_primitive(key[1])
        if key[0] == FHIR_NS:
            # Schemat använder FHIR:s egna XML-typer (LightFhir.xsd i prescribe): de är redan
            # FHIR-datatyper och refereras som sådana.
            n = re.sub(r"-(primitive|list)$", "", key[1])
            return "prim", {"ResourceReference": "Reference", "IdentifierUse": "code",
                            "QuantityCompararator": "code"}.get(n, n)
        tdef = self.S.types.get(key)
        if tdef is None:
            return "prim", "string"
        tel, tf = tdef
        name = key[1]
        cmp = rd.compare(name, tel)
        if cmp == "identical":
            return "global", name
        if cmp == "narrowed":
            self.local_narrowed(name, tel)
            return "local", name
        if tel.tag == f"{XS}simpleType":
            r = tel.find(f"{XS}restriction")
            base = self.S.resolve(r.get("base"), tf)[1] if r is not None and r.get("base") else "string"
            enums = [e.get("value") for e in tel.iter(f"{XS}enumeration")]
            if enums:
                return "enum", (name, enums)
            pats = [p.get("value") for p in tel.iter(f"{XS}pattern")]
            if pats:
                self.local_simple(name, tel, rd.fhir_primitive(base), pats)
                return "local-simple", name
            return "prim", rd.fhir_primitive(base)
        return "inline", (tel, tf)

    def local_narrowed(self, name, tel):
        if name in self.local_types:
            return
        g = dict((n, (lo, hi)) for n, _, lo, hi in rd.complex_signature(rd.GLOBAL[name]))
        out = [f"Logical: {name}", f"Parent: {rd.url(name)}", f"Id: {name}", f'Title: "{name}"',
               f'Description: "{name} enligt domänens schema: den gemensamma RIV-TA-typen {name} med snävare kardinalitet."',
               "Characteristics: #can-be-type"]
        for n, _, lo, hi in rd.complex_signature(tel):
            if (lo, hi) != g[n]:
                out.append(f"* {n} {lo}..{'*' if hi == 'unbounded' else hi}")
        self.local_types[name] = out

    def local_simple(self, name, tel, base, pats):
        if name in self.local_types:
            return
        inv = f"local-{name.lower()}-pattern"[:64]  # FHIR-id: högst 64 tecken
        self.local_types[name] = [f"Profile: {name}", f"Parent: {base}", f"Id: {name}", f'Title: "{name}"',
                                  f'Description: "{fsh_str(doc_of(tel) or name)} (xs:simpleType i domänens schema.)"',
                                  f"* obeys {inv}"] + rd.regex_invariant(inv, pats, name)

    # ── innehåll ──
    def particles(self, ctype, fname):
        """[(element, valfritt, choice-grupp-id)] i en complexType, inklusive ärvda."""
        out = []
        cc = ctype.find(f"{XS}complexContent")
        body = ctype
        if cc is not None:
            ext = cc.find(f"{XS}extension")
            if ext is not None:
                bkey = self.S.resolve(ext.get("base"), fname)
                if bkey in self.S.types:
                    bel, bf = self.S.types[bkey]
                    out += [(e, o, c, bf) for e, o, c, _ in self.particles(bel, bf)]
                body = ext

        def walk(node, optional, choice):
            for c in node:
                if c.tag == f"{XS}element":
                    out.append((c, optional, choice, fname))
                elif c.tag == f"{XS}sequence":
                    walk(c, optional or c.get("minOccurs") == "0", choice)
                elif c.tag == f"{XS}choice":
                    self.n_choice += 1
                    req = not optional and c.get("minOccurs", "1") != "0" and c.get("maxOccurs", "1") == "1"
                    walk(c, True, (self.n_choice, req) if c.get("maxOccurs", "1") == "1" else None)
        walk(body, False, None)
        return out

    def leaf(self, path, card, kind, data, short, dfn):
        if kind == "prim":
            self.lines.append(f'* {path} {card} {data} "{fsh_str(short)}" "{fsh_str(dfn)}"')
        elif kind in ("global", "local"):
            self.lines.append(f'* {path} {card} {data} "{fsh_str(short)}" "{fsh_str(dfn)}"')
            if kind == "global" and rd.is_simple(data):
                self.lines[-1] = self.lines[-1].replace(f" {data} ", " string ", 1)
                self.lines.append(f"* {path} only {data}")
        elif kind == "local-simple":
            base = self.local_types[data][1].split(": ")[1]
            self.lines.append(f'* {path} {card} {base} "{fsh_str(short)}" "{fsh_str(dfn)}"')
            self.lines.append(f"* {path} only {data}")
        elif kind == "enum":
            ename, values = data
            base = re.sub(r"_values$", "", ename)
            cands = [re.sub(r"(Enum|Type)$", "", base) + "VS", base + "VS"]
            if base.startswith("code") and len(base) > 4:  # codeVersionReason -> VersionReasonVS
                rest = base[4].upper() + base[5:]
                cands += [rest + "VS", re.sub(r"(Enum|Type)$", "", rest) + "VS", rest + "TypeVS"]
            vs = next((c for c in cands if c in self.vs), cands[0])
            dfn2 = dfn + " Tillåtna värden: " + ", ".join(values) + "."
            self.lines.append(f'* {path} {card} code "{fsh_str(short)}" "{fsh_str(dfn2)}"')
            if vs in self.vs:
                self.lines.append(f"* {path} from {vs} (required)")

    def attributes(self, prefix, ctype, fname, seen=None):
        """XML-attribut (och textinnehållet i en simpleContent-typ) som element."""
        holders = [ctype]
        for wrap in ("complexContent", "simpleContent"):
            w = ctype.find(f"{XS}{wrap}")
            if w is not None:
                holders += [x for x in w if x.tag in (f"{XS}extension", f"{XS}restriction")]
        sc = ctype.find(f"{XS}simpleContent")
        if sc is not None:
            ext = next((x for x in sc if x.tag in (f"{XS}extension", f"{XS}restriction")), None)
            if ext is not None and ext.get("base"):
                kind, data = self.type_ref(self.S.resolve(ext.get("base"), fname), ext, fname)
                if kind == "inline":
                    kind, data = "prim", "string"
                self.leaf(f"{prefix}value", "1..1", kind, data, "Textinnehåll",
                          "Elementets textinnehåll i XML (simpleContent).")
        for h in holders:
            for a in h.findall(f"{XS}attribute"):
                name = a.get("name")
                if not name or a.get("use") == "prohibited" or (seen is not None and name in seen):
                    continue
                if seen is not None:
                    seen.add(name)
                card = "1..1" if a.get("use") == "required" else "0..1"
                edoc = doc_of(a)
                if a.get("type"):
                    kind, data = self.type_ref(self.S.resolve(a.get("type"), fname), a, fname)
                else:
                    st = a.find(f"{XS}simpleType")
                    enums = [e.get("value") for e in st.iter(f"{XS}enumeration")] if st is not None else []
                    kind, data = ("enum", (name, enums)) if enums else ("prim", "string")
                if kind == "inline":
                    kind, data = "prim", "string"
                short = edoc if edoc and len(edoc) < 120 else name
                self.leaf(f"{prefix}{name}", card, kind, data, short, (edoc or name) + " (XML-attribut)")

    def emit(self, prefix, ctype, fname, stack):
        choices, seen = {}, set()
        for el, optional, choice, ef in self.particles(ctype, fname):
            name, t, ef2 = el.get("name"), el.get("type"), ef
            edoc = doc_of(el)
            if el.get("ref"):
                rkey = self.S.resolve(el.get("ref"), ef)
                rdef = self.S.elements.get(rkey)
                if rdef is None:
                    continue
                name, t, ef2 = rdef[0].get("name"), rdef[0].get("type"), rdef[1]
                edoc = edoc or doc_of(rdef[0])
                el_inline = rdef[0]
            else:
                el_inline = el
            if t is None:
                inl = el_inline.find(f"{XS}complexType")
                if inl is None:
                    inl = el_inline.find(f"{XS}simpleType")
                kind, data = ("inline", (inl, ef2)) if inl is not None and inl.tag == f"{XS}complexType" else ("prim", "string")
                tname = "(anonym typ)"
            else:
                key = self.S.resolve(t, ef2)
                if key[1] == "ExtensionType":
                    continue
                kind, data = self.type_ref(key, el, ef2)
                tname = key[1] if key[0] != "xs" else f"xs:{key[1]}"
            if name in seen:
                continue  # samma element i flera grenar av en xs:choice (t.ex. PGPData): en gång
            seen.add(name)
            lo = "0" if optional else el.get("minOccurs", "1")
            hi = el.get("maxOccurs", "1")
            card = f"{lo}..{'*' if hi == 'unbounded' else hi}"
            path = f"{prefix}{name}"
            if choice:
                choices.setdefault(choice, []).append(name)
            short = edoc if edoc and len(edoc) < 120 else (tname if kind == "inline" else name)
            dfn = edoc or name  # TKB-texten förs in av sync_field_descriptions.py; typen syns i typkolumnen
            if kind != "inline":
                self.leaf(path, card, kind, data, short, dfn)
            else:
                tel, tf = data
                key = (self.S.resolve(t, ef2) if t else None)
                if key in stack:
                    target = stack[key]
                    self.lines.append(f'* {path} {card} contentReference #{target} "{fsh_str(tname)}" "{fsh_str(dfn + " Rekursiv: samma struktur som " + target + ".")}"')
                    continue
                self.lines.append(f'* {path} {card} Base "{fsh_str(tname)}" "{fsh_str(dfn)}"')
                st = dict(stack)
                if key:
                    st[key] = f"{self.model_id}.{path}"
                self.emit(path + ".", tel, tf, st)
        self.attributes(prefix, ctype, fname, seen)
        for (cid, req), members in choices.items():
            if len(members) < 2:
                continue
            inv = f"{choice_prefix(self.model)}-choice-{len(self.invariants) + 1}"
            ctx = prefix.rstrip(".")
            if len(members) == 2:
                a, b = (f"{m}.exists()" for m in members)
                expr = f"{a} xor {b}" if req else f"({a} and {b}).not()"
            else:
                expr = " + ".join(f"iif({m}.exists(), 1, 0)" for m in members) + (" = 1" if req else " <= 1")
            desc = f"{'Exakt' if req else 'Högst'} ett av {', '.join(members)} ska anges (xs:choice i schemat)."
            self.lines.append(f"* {ctx + ' ' if ctx else ''}obeys {inv}")
            self.invariants += ["", f"Invariant: {inv}", f'Description: "{desc}"', f'Expression: "{expr}"', "Severity: #error"]


REPORT = []  # obeys-regler som inte kunde föras över
HEADER_KEYS = ("Logical:", "Parent:", "Id:", "Title:", "Description:", "Characteristics:")
RE_ENTITY = re.compile(r"^(Logical|Invariant|Profile|Extension|ValueSet|CodeSystem|RuleSet|Instance|Alias|Mapping):")
GENERATED_COMMENTS = ("// Elementen genereras ur ", "// Grunddatatyper refereras till ",
                      "// Invarianter för TKB:ns regler", "// Fältbeskrivningar från TKB:ns fälttabell", "// Undantag, handskrivna")


def split_existing(text: str):
    """(huvud, insert-rader) ur en befintlig modellfil. Huvudet är kommentarerna överst och
    Logical-blocket fram till första regeln; Invariant-block hanteras av old_rules()."""
    lines = [ln for ln in text.splitlines() if not ln.startswith(GENERATED_COMMENTS)]
    top = []
    for ln in lines:
        if RE_ENTITY.match(ln):
            break
        top.append(ln)
    li = next(i for i, ln in enumerate(lines) if ln.startswith("Logical:"))
    head, i = [], li
    while i < len(lines) and not lines[i].startswith("*") and not (i > li and RE_ENTITY.match(lines[i])):
        if not lines[i].startswith("Parent:"):  # modellerna ärver Base (SUSHI:s standard för Logical)
            head.append(lines[i])
        i += 1
    # Kommentarer efter modellhuvudet hörde till de gamla elementen
    last = max((n for n, ln in enumerate(head) if ln.startswith(HEADER_KEYS) or ln.startswith('"""')), default=len(head) - 1)
    head = head[:last + 1]
    while top and not top[-1].strip():
        top.pop()
    while top and not top[0].strip():
        top.pop(0)
    inserts = [ln for ln in lines if re.match(r"^\*\s+insert\s+\w+FieldDescriptions", ln)]
    return (top + [""] if top else []) + head, inserts


# ─────────────── Invarianter för TKB-regler (PR #51) bärs över ───────────────
# Modellerna hade handskrivna invarianter (fältregler ur TKB:n) med de gamla elementnamnen
# och FHIR-typerna. De förs över till den genererade modellen: obeys-sökvägen och namnen i
# FHIRPath-uttrycket översätts till schemats namn, och Identifier/CodeableConcept-uttryck
# (.system/.value/.coding) till IIType/CVType (root/extension, code direkt).

RE_RULE_LINE = re.compile(r"^(\s*)\*\s+(\S+)(.*)$")
RE_ELEM_LINE = re.compile(r"^\s*\*\s+([\w.\[\]]+)\s+(\d+)\.\.(\d+|\*)\s+(\S+)")


def old_rules(text: str, model_id: str):
    """(element {sökväg: typ}, obeys [(sökväg, id)], invariantblock {id: rader}) ur en modellfil."""
    lines = text.splitlines()
    elems, obeys, ctx = {}, [], []
    in_model = False
    for ln in lines:
        if RE_ENTITY.match(ln):
            in_model = ln.startswith("Logical:")
            ctx = []
            continue
        if not in_model:
            continue
        r = RE_RULE_LINE.match(ln)
        if not r:
            continue
        indent, tok, rest = len(r.group(1)), r.group(2), r.group(3)
        ctx = [c for c in ctx if c[0] < indent]
        parent = ctx[-1][1] if ctx else ()
        if tok == "obeys":
            obeys += [(parent, i.strip()) for i in rest.split(" and ")]
            continue
        if tok.startswith(("^", "insert")):
            continue
        path = parent + tuple(re.sub(r"\[.*\]", "", p) for p in tok.split("."))
        m = RE_ELEM_LINE.match(ln)
        if m:
            elems[path] = m.group(4)
        ob = re.match(r"^\s*obeys\s+(.+)$", rest)
        if ob:
            obeys += [(path, i.strip()) for i in ob.group(1).split(" and ")]
        ctx.append((indent, path))
    blocks, cur = {}, None
    for ln in lines:
        if ln.startswith("Invariant:"):
            cur = ln.split(":", 1)[1].strip()
            blocks[cur] = [ln]
            continue
        if cur is None:
            continue
        if RE_ENTITY.match(ln) or ln.startswith(("*", "//")) or (not ln.strip() and any(b.startswith("Severity") for b in blocks[cur])):
            cur = None
            continue
        blocks[cur].append(ln)
    gen = re.compile(rf"^{re.escape(model_id.lower())}-choice-\d+$|-choice-\d+$")
    obeys = [(p, i) for p, i in obeys if not gen.search(i)]
    blocks = {k: v for k, v in blocks.items() if not gen.search(k)}
    return elems, obeys, blocks


def new_tree(gen_lines):
    tree = {}
    for ln in gen_lines:
        m = RE_ELEM_LINE.match(ln)
        if m:
            tree[tuple(m.group(1).split("."))] = m.group(4)
    return tree


def map_path(old: tuple, new: dict):
    """Gammal elementsökväg -> ny (schemats namn), eller None. Saknas första ledet på
    rotnivå prövas det under rotens omslagselement (t.ex. requestOutcome.outcome, där den
    gamla modellen lyfte upp omslagets innehåll till roten)."""
    direct = _map_from((), old, new)
    if direct is not None or not old:
        return direct
    for wrap in sorted(p for p in new if len(p) == 1 and any(q[:1] == p and len(q) > 1 for q in new)):
        hit = _map_from(wrap, old, new)
        if hit is not None:
            return hit
    return None


def _norm(name: str) -> str:
    return name.replace("_", "").lower()


def _map_from(out: tuple, old: tuple, new: dict):
    for seg in old:
        kids = {p[-1] for p in new if p[:-1] == out and len(p) == len(out) + 1}
        if seg in kids:
            out += (seg,)
            continue
        same = [k for k in kids if _norm(k) == _norm(seg)]  # ivlPq -> ivl_pq
        if len(same) == 1:
            out += (same[0],)
            continue
        # Den gamla modellen hoppade ofta över ett omslag (t.ex. careContactBody), eller
        # lyfte upp omslagets innehåll till roten (requestConfirmation.typeOfRequestConfirmation)
        via = [k for k in kids if out + (k, seg) in new]
        if len(via) == 1:
            out += (via[0], seg)
            continue
        low = _norm(seg)
        cand = [k for k in kids if low.endswith(_norm(k)) and low != _norm(k)] or \
               [k for k in kids if _norm(k) in low] or [k for k in kids if low in _norm(k)]
        if len(cand) == 0:
            return None
        out += (max(cand, key=len),)
    return out


FHIR_SUB = {"Identifier": {"system": "root", "value": "extension"},
            "CodeableConcept": {"text": "originalText", "system": "codeSystem", "display": "displayName"}}


def _new_children(path: tuple, new: dict) -> set:
    kids = {p[-1] for p in new if p[:-1] == path and len(p) == len(path) + 1}
    t = new.get(path)
    if t in rd.GLOBAL and not rd.is_simple(t):
        kids |= {n for n, *_ in rd.complex_signature(rd.GLOBAL[t])}
    return kids


PRIMITIVES = {"string", "code", "boolean", "integer", "decimal", "dateTime", "date", "uri", "url",
              "instant", "time", "positiveInt", "unsignedInt", "base64Binary", "id", "oid"}


def rewrite_expr(expr: str, ctx: tuple, old: dict, new: dict) -> str:
    parts = re.split(r"('(?:[^'\\]|\\.)*')", expr)
    nctx = map_path(ctx, new) if ctx else ()
    for n in range(0, len(parts), 2):
        def chain(m):
            segs, node, out = m.group(0).split("."), ctx, []
            nnode = nctx
            for k, seg in enumerate(segs):
                typ = old.get(node)
                if node + (seg,) in old:
                    mp = map_path(node + (seg,), new)
                    base = map_path(node, new) if node else ()
                    if mp and base is not None and mp[:len(base)] == base and len(mp) > len(base):
                        out += mp[len(base):]  # även omslag som den gamla modellen hoppade över
                    else:
                        out.append(mp[-1] if mp else seg)
                    node, nnode = node + (seg,), mp
                    last = k == len(segs) - 1
                    if last and mp and old.get(node) == "code" and new.get(mp) not in PRIMITIVES \
                            and "code" in _new_children(mp, new):
                        out.append("code")  # code -> kodtyp med attributet code (CVType, codeXType)
                elif typ == "CodeableConcept" and seg == "coding":
                    continue  # CVType har code/codeSystem direkt, utan coding
                elif typ in FHIR_SUB and seg in FHIR_SUB[typ]:
                    if nnode and new.get(nnode) in PRIMITIVES and seg == "value":
                        out += segs[k + 1:]  # Identifier.value -> enkel typ (t.ex. HSAIdType)
                        break
                    out.append(FHIR_SUB[typ][seg])
                    out += segs[k + 1:]
                    break
                else:
                    out += segs[k:]
                    break
            return ".".join(out)
        parts[n] = re.sub(r"(?<![\w.$%'])[A-Za-z_]\w*(?:\.[A-Za-z_]\w*)*", chain, parts[n])
    return "".join(parts)


def carry_rules(old_text: str, model_id: str, gen_lines: list, report: list, where: str):
    """(obeys-rader, {invariant-id: omskrivna rader}, {invariant-id: gamla rader}) för den
    nya modellen. Invarianter som modellen inte använder lämnas åt anroparen."""
    old, obeys, blocks = old_rules(old_text, model_id)
    new = new_tree(gen_lines)
    ob_lines, rewritten = [], {}
    for path, inv in obeys:
        np = map_path(path, new) if path else ()
        if np is None:
            report.append(f"{where}: obeys {inv} på {'.'.join(path)} saknar motsvarighet i schemat")
            continue
        ob_lines.append(f"* {'.'.join(np) + ' ' if np else ''}obeys {inv}")
        if inv not in blocks:
            report.append(f"{where}: invarianten {inv} definieras i en annan fil — kontrollera uttrycket mot schemats namn")
        elif inv not in rewritten:
            out = []
            for ln in blocks[inv]:
                m = re.match(r'^(Expression:\s*)"(.*)"\s*$', ln)
                if m:
                    ln = f'{m.group(1)}"{rewrite_expr(m.group(2), path, old, new)}"'
                out.append(ln)
            rewritten[inv] = out
    return ob_lines, rewritten, blocks


def split_entities(text: str):
    """(kommentarer överst, [(entitetstyp, rader)]) ur en FSH-fil."""
    lines = [ln for ln in text.splitlines() if not ln.startswith(GENERATED_COMMENTS)]
    top, ents = [], []
    for ln in lines:
        m = RE_ENTITY.match(ln)
        if m:
            ents.append((m.group(1), [ln]))
        elif ents:
            ents[-1][1].append(ln)
        else:
            top.append(ln)
    while top and not top[-1].strip():
        top.pop()
    while top and not top[0].strip():
        top.pop(0)
    return top, ents


def choose_root(S, tns, contract, target: Path) -> str:
    """Request- eller Response-elementet, efter vilket som delar flest elementnamn med den
    befintliga modellen (lika: Response)."""
    old_names = {p[-1].lower() for p in old_rules(target.read_text(encoding="utf-8"), "")[0]}
    best, score = f"{contract}Response", (-1, -1)
    for root in (f"{contract}Response", contract):
        edef = S.elements.get((tns, root))
        if edef is None:
            continue
        g = Gen(S, target.parents[3], "X", "X")
        tkey = S.resolve(edef[0].get("type"), edef[1])
        tel, tf = S.types[tkey]
        g.emit("", tel, tf, {tkey: "X"})
        names = {p[-1].lower() for p in new_tree(g.lines)}
        sc = (len(names & old_names), len(names))  # lika: det större meddelandet
        if sc > score:
            best, score = root, sc
    return best


def find_schema(images: Path, contract: str):
    """Kontraktets tjänsteschema: {kontrakt}Responder_*.xsd, eller {kontrakt}_*.xsd (äldre
    domäner som crm:carelisting), eller XInitiator_*.xsd för återanropet XStatus. Skiftläget ignoreras (GetHospPersonForIVO/-Ivo)."""
    if not images.is_dir():
        return None
    low = contract.lower()
    files = sorted(f for f in images.glob("*.xsd"))
    prefs = [f"{low}responder_", f"{low}_"]
    if low.endswith("status"):  # ehr:patientsummary: XStatus finns i XInitiator_*.xsd
        prefs.append(f"{low[:-6]}initiator_")
    for pref in prefs:
        hit = [f for f in files if f.name.lower().startswith(pref)]
        if hit:
            return hit[-1]
    return None


def _root_for(header: list, fname: str, contract: str, has_request_model: bool):
    """Request- eller Response-elementet för ett Logical-block, efter blockets namn/Id."""
    name = next((ln.split(":", 1)[1].strip() for ln in header if ln.startswith("Logical:")), "")
    mid = next((ln.split(":", 1)[1].strip() for ln in header if ln.startswith("Id:")), "")
    if name.endswith("Request") or mid.endswith("-request") or fname.endswith("Request.fsh"):
        return contract
    if name.endswith("Response") or mid.endswith("-response") or has_request_model:
        return f"{contract}Response"
    return None  # avgörs av innehållet (choose_root)


def build(ig: Path, contract: str, check: bool) -> list:
    images = ig / "input" / "images"
    start = find_schema(images, contract)
    if start is None:
        sys.exit(f"[xsd_logical_models] hittar inget {contract}Responder_*.xsd i {images}")
    S = Schema(start)
    tns = S.nsmap[start.name][1]
    for (ns, n) in list(S.elements):  # getListing/GetHospPersonForIvo: skiftläget skiljer
        if ns == tns:
            S.elements.setdefault((tns, n[0].upper() + n[1:]), S.elements[(ns, n)])
            for c in (contract, f"{contract}Response"):
                if n.lower() == c.lower():
                    S.elements.setdefault((tns, c), S.elements[(ns, n)])
    lm = ig / "input" / "fsh" / "logical-models"
    changed = []
    local_types = {}
    targets = [t for t in (lm / f"{contract}.fsh", lm / f"{contract}Request.fsh") if t.exists()]
    if list(images.glob(f"{contract}RequestResponder_*.xsd")):
        targets = targets[:1]  # {contract}Request är ett eget kontrakt (CreateForm/CreateFormRequest)
    parsed = {t: split_entities(t.read_text(encoding="utf-8")) for t in targets}
    n_models = sum(1 for t in targets for kind, _ in parsed[t][1] if kind == "Logical")
    has_req = any(_root_for(b, t.name, contract, False) == contract
                  for t in targets for kind, b in parsed[t][1] if kind == "Logical")
    for target in targets:
        top, ents = parsed[target]
        inv_text = "\n".join(ln for kind, b in ents if kind == "Invariant" for ln in b)
        sections, rewritten, all_blocks, kept, regen = [], {}, {}, [], set()
        for kind, block in ents:
            if kind != "Logical":
                continue
            btext = "\n".join(block)
            head, inserts = split_existing(btext)
            model = head[0].split(":", 1)[1].strip()
            model_id = next((ln.split(":", 1)[1].strip() for ln in head if ln.startswith("Id:")), model)
            root_el = _root_for(head, target.name, contract, has_req)
            if root_el is None:
                root_el = choose_root(S, tns, contract, target) if n_models == 1 else f"{contract}Response"
            edef = S.elements.get((tns, root_el))
            if edef is None:
                sections.append(block)  # meddelandet finns inte i schemat: blocket lämnas orört
                continue
            tkey = S.resolve(edef[0].get("type"), edef[1])
            tel, tf = S.types[tkey]
            # Elementens sökvägar i en Logical börjar med modellens Id (inte namnet), och
            # contentReference måste peka på den sökvägen.
            g = Gen(S, ig, model, model_id)
            g.emit("", tel, tf, {tkey: model_id})
            if OPENEHR in {t for _, t in S.nsmap.values()} and any(f' "{c}' in ln for ln in g.lines for c in ("DV_", "ITEM_")):
                # openEHR-arketyper (processdevelopment:infections): schemat är openEHR:s
                # referensmodell, inte TKB:ns fält. Den handskrivna modellen behålls.
                REPORT.append(f"{target}: {model} bygger på openEHR-arketyper — handskriven modell behålls")
                kept.append(model)
                sections.append(block)
                continue
            version = re.search(r'\^version\s*=\s*"([^"]*)"', btext)
            out = head + [""] + ([f'* ^version = "{version.group(1)}"'] if version else []) + g.lines
            if inserts:
                out += ["", "// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)"] + inserts
            rob, rw, blocks = carry_rules(btext + "\n" + inv_text, model_id, g.lines, REPORT, str(target))
            for k, v in rw.items():
                rewritten.setdefault(k, v)
            all_blocks.update(blocks)
            if rob:
                out += ["", "// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)"] + rob
            out += g.invariants
            while out and not out[-1].strip():
                out.pop()
            sections.append(out)
            regen.add(model.lower())
            local_types.update(g.local_types)
        for kind, block in ents:
            if kind not in ("Logical", "Invariant"):
                sections.append(block)  # t.ex. Alias, RuleSet: orört
        invs = []
        gen_inv = re.compile(r"-choice-\d+$")
        for kind, block in ents:
            if kind != "Invariant":
                continue
            k = block[0].split(":", 1)[1].strip()
            if gen_inv.search(k) and k.rsplit("-choice-", 1)[0] in {choice_prefix(m) for m in regen}:
                continue  # genererad xs:choice-invariant: skrivs om i modellblocket
            lines = [ln for ln in rewritten.get(k, block) if not ln.startswith("//")]
            while lines and not lines[-1].strip():
                lines = lines[:-1]
            invs.append(lines)
        body = [f"// Elementen genereras ur {start.name} av scripts/xsd_logical_models.py — redigera inte för hand.",
                f"// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper ({rd.PACKAGE_ID})."]
        if kept:
            body.append(f"// Undantag, handskrivna (schemat är openEHR:s referensmodell): {', '.join(kept)}.")
        out = body + [""] + (top + [""] if top else [])
        for sec in sections + invs:
            while sec and not sec[-1].strip():
                sec = sec[:-1]
            out += sec + [""]
        while out and not out[-1].strip():
            out.pop()
        text = "\n".join(out) + "\n"
        if target.read_text(encoding="utf-8") != text:
            changed.append(target)
            if not check:
                target.write_text(text, encoding="utf-8")
    dt = ig / "input" / "fsh" / "datatypes"
    for name, lines in local_types.items():
        f = dt / f"{name}.fsh"
        text = "// Genererad av scripts/xsd_logical_models.py — redigera inte för hand.\n\n" + "\n".join(lines) + "\n"
        if not f.exists() or f.read_text(encoding="utf-8") != text:
            changed.append(f)
            if not check:
                dt.mkdir(parents=True, exist_ok=True)
                f.write_text(text, encoding="utf-8")
    return changed


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("ig")
    ap.add_argument("--contract", required=True, action="append")
    ap.add_argument("--check", action="store_true")
    a = ap.parse_args()
    changed = []
    for c in a.contract:
        changed += build(Path(a.ig), c, a.check)
    for f in changed:
        print(("inaktuell: " if a.check else "skrev ") + str(f))
    for r in REPORT:
        print("VARNING " + r, file=sys.stderr)
    sys.exit(1 if a.check and changed else 0)


if __name__ == "__main__":
    main()
