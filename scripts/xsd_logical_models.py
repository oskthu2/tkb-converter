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
            base = self.S.resolve(r.get("base"), tf)[1] if r is not None else "string"
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
        inv = f"{self.ig.name.lower().replace('_', '-')[:40]}-{name.lower()}-pattern"
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

    def emit(self, prefix, ctype, fname, stack):
        choices = {}
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
            lo = "0" if optional else el.get("minOccurs", "1")
            hi = el.get("maxOccurs", "1")
            card = f"{lo}..{'*' if hi == 'unbounded' else hi}"
            path = f"{prefix}{name}"
            if choice:
                choices.setdefault(choice, []).append(name)
            short = edoc if edoc and len(edoc) < 120 else (tname if kind == "inline" else name)
            dfn = edoc or name  # TKB-texten förs in av sync_field_descriptions.py; typen syns i typkolumnen
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
                vs = re.sub(r"(Enum|Type)$", "", ename) + "VS"
                dfn2 = dfn + " Tillåtna värden: " + ", ".join(values) + "."
                self.lines.append(f'* {path} {card} code "{fsh_str(short)}" "{fsh_str(dfn2)}"')
                if vs in self.vs:
                    self.lines.append(f"* {path} from {vs} (required)")
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
        for (cid, req), members in choices.items():
            if len(members) < 2:
                continue
            inv = f"{self.model.lower()}-choice-{len(self.invariants) + 1}"
            ctx = prefix.rstrip(".")
            if len(members) == 2:
                a, b = (f"{m}.exists()" for m in members)
                expr = f"{a} xor {b}" if req else f"({a} and {b}).not()"
            else:
                expr = " + ".join(f"iif({m}.exists(), 1, 0)" for m in members) + (" = 1" if req else " <= 1")
            desc = f"{'Exakt' if req else 'Högst'} ett av {', '.join(members)} ska anges (xs:choice i schemat)."
            self.lines.append(f"* {ctx + ' ' if ctx else ''}obeys {inv}")
            self.invariants += ["", f"Invariant: {inv}", f'Description: "{desc}"', f'Expression: "{expr}"', "Severity: #error"]


HEADER_KEYS = ("Logical:", "Parent:", "Id:", "Title:", "Description:", "Characteristics:")


def split_existing(text: str):
    """(huvud, insert-rader) ur en befintlig modellfil."""
    lines = text.splitlines()
    lines = [ln for ln in lines if not ln.startswith(("// Elementen genereras ur ", "// Grunddatatyper refereras till "))]
    while lines and not lines[0].strip():
        lines.pop(0)
    head, i = [], 0
    while i < len(lines) and not lines[i].startswith("*"):
        if lines[i].startswith("Parent:"):
            i += 1
            continue  # modellerna ärver Base (SUSHI:s standard för Logical)
        if lines[i].startswith(("Invariant:",)):
            break
        head.append(lines[i])
        i += 1
    # Kommentarer efter modellhuvudet hörde till de gamla elementen
    last = max((n for n, ln in enumerate(head) if ln.startswith(HEADER_KEYS) or ln.startswith('"""')), default=len(head) - 1)
    head = head[:last + 1]
    inserts = [ln for ln in lines if re.match(r"^\*\s+insert\s+\w+FieldDescriptions", ln)]
    return head, inserts


def build(ig: Path, contract: str, check: bool) -> list:
    images = ig / "input" / "images"
    resp = sorted(images.glob(f"{contract}Responder_*.xsd"))
    if not resp:
        sys.exit(f"[xsd_logical_models] hittar inget {contract}Responder_*.xsd i {images}")
    start = resp[-1]
    S = Schema(start)
    lm = ig / "input" / "fsh" / "logical-models"
    changed = []
    local_types = {}
    for root_el, fname in ((f"{contract}Response", f"{contract}.fsh"), (contract, f"{contract}Request.fsh")):
        tns = S.nsmap[start.name][1]
        edef = S.elements.get((tns, root_el))
        target = lm / fname
        if edef is None or not target.exists():
            continue
        head, inserts = split_existing(target.read_text(encoding="utf-8"))
        model = next(ln.split(":", 1)[1].strip() for ln in head if ln.startswith("Logical:"))
        tkey = S.resolve(edef[0].get("type"), edef[1])
        tel, tf = S.types[tkey]
        # Elementens sökvägar i en Logical börjar med modellens Id (inte namnet), och
        # contentReference måste peka på den sökvägen.
        model_id = next((ln.split(":", 1)[1].strip() for ln in head if ln.startswith("Id:")), model)
        g = Gen(S, ig, model, model_id)
        g.emit("", tel, tf, {tkey: model_id})
        version = re.search(r'\^version\s*=\s*"([^"]*)"', target.read_text(encoding="utf-8"))
        body = [f"// Elementen genereras ur {start.name} av scripts/xsd_logical_models.py — redigera inte för hand.",
                f"// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper ({rd.PACKAGE_ID})."]
        out = head + [""] + ([f'* ^version = "{version.group(1)}"'] if version else []) + g.lines
        if inserts:
            out += ["", "// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)"] + inserts
        out += g.invariants
        text = "\n".join(body + [""] + out) + "\n"
        if target.read_text(encoding="utf-8") != text:
            changed.append(target)
            if not check:
                target.write_text(text, encoding="utf-8")
        local_types.update(g.local_types)
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
    sys.exit(1 if a.check and changed else 0)


if __name__ == "__main__":
    main()
