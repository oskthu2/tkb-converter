#!/usr/bin/env python3
"""Generera logiska modeller (FSH) och fälttabeller (Markdown) direkt ur en domäns WSDL/XSD.

Används för domäner som saknar TKB (t.ex. eHälsomyndighetens se.apotekensservice.*),
där scheman och deras annoteringar är den enda källan. Se tkb-fetch-convert.

    scripts/xsd_to_ig.py <schemas-katalog> <ig-katalog> --domain se.apotekensservice.expo --version 2.0

Skriver:
  <ig>/input/fsh/logical-models/{Kontrakt}.fsh          svaret (utelämnas om svaret är tomt)
  <ig>/input/fsh/logical-models/{Kontrakt}Request.fsh   begäran, inkl. SOAP-huvuden ur WSDL
  <ig>/xsd-generated/contracts.json                     metadata per kontrakt
  <ig>/xsd-generated/{Kontrakt}.md                      fälttabell (begäran + svar) för sida 7
  <ig>/xsd-generated/types.md                           tabeller för gemensamma typer (sida 6)

xs:any och element av typen ExtensionType (utökningspunkter) tas inte med i modellerna.

Med --codesystems PREFIX blir varje simpleType med xs:enumeration ett CodeSystem och ett
ValueSet (<ig>/input/fsh/codesystems/, valuesets/, canonical
https://fhir.inera.se/CodeSystem/{PREFIX}-{typ}-cs), och fälten får typen code med en
required-bindning. Visningstexter kan ges med --code-displays (JSON):
  {"YrkesKodEnum": {"title": "Yrkeskod", "source": "…", "codes": {"LK": "Läkare", …}}}
Koder utan visningstext får koden som visningstext. URL:erna skrivs till
xsd-generated/codesystems.json (för special-url i sushi-config.yaml och kodverkslistan
på sida 6).
"""
import argparse
import json
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

XS = "http://www.w3.org/2001/XMLSchema"
WSDL = "http://schemas.xmlsoap.org/wsdl/"
SOAP = "http://schemas.xmlsoap.org/wsdl/soap/"
Q = lambda ns, t: f"{{{ns}}}{t}"

PRIMITIVES = {
    "string": "string", "normalizedString": "string", "token": "string",
    "boolean": "boolean", "int": "integer", "integer": "integer", "short": "integer",
    "positiveInt": "positiveInt", "nonNegativeInteger": "unsignedInt", "unsignedInt": "unsignedInt",
    "long": "string", "unsignedLong": "string", "decimal": "decimal", "double": "decimal", "float": "decimal",
    "dateTime": "dateTime", "date": "date", "time": "time", "anyURI": "uri", "base64Binary": "base64Binary",
}
# ISO 21090-datatyper (ISO_dt.xsd, t.ex. EN13606-baserade domäner), används med --iso-datatypes
ISO_TYPES = {
    "II": "Identifier", "CD": "CodeableConcept", "CE": "CodeableConcept", "CV": "CodeableConcept",
    "CO": "CodeableConcept", "CS": "code", "ST": "string", "SC": "string", "TS": "dateTime",
    "IVL_TS": "Period", "BL": "boolean", "BN": "boolean", "INT": "integer", "REAL": "decimal",
    "PQ": "Quantity", "IVL_PQ": "Range", "RTO": "Ratio", "ED": "Attachment", "AD": "Address",
    "TEL": "ContactPoint", "EN": "HumanName", "PN": "HumanName", "URL": "url", "ANY": "string",
}
ISO = False
RESERVED = {"id", "text", "code", "status", "value", "name", "type", "version", "language", "meta",
            "extension", "modifierExtension", "contained", "implicitRules", "url"}


def doc_of(el):
    ann = el.find(Q(XS, "annotation"))
    if ann is None:
        return ""
    parts = []
    for d in ann.findall(Q(XS, "documentation")):
        parts.append(" ".join("".join(d.itertext()).split()))
    return " ".join(p for p in parts if p)


def lower_first(s):
    return s[:1].lower() + s[1:]


def snake_to_camel(s):
    """IDENTIFIED_ENTITY -> identifiedEntity"""
    parts = s.lower().split("_")
    return parts[0] + "".join(x.capitalize() for x in parts[1:])


class Schemas:
    def __init__(self, root):
        self.types = {}      # (ns, name) -> (element, file)
        self.elements = {}   # (ns, name) -> (element, file)
        self.nsmaps = {}     # file -> {prefix: ns}
        for f in sorted(Path(root).rglob("*.xsd")):
            self._load(f)

    def _load(self, f):
        nsmap = {}
        for ev, (prefix, uri) in ET.iterparse(f, events=["start-ns"]):
            nsmap.setdefault(prefix, uri)
        tree = ET.parse(f).getroot()
        tns = tree.get("targetNamespace")
        self.nsmaps[f] = nsmap
        for c in tree:
            n = c.get("name")
            if c.tag in (Q(XS, "complexType"), Q(XS, "simpleType")) and n:
                self.types.setdefault((tns, n), (c, f, tns))
            elif c.tag == Q(XS, "element") and n:
                self.elements.setdefault((tns, n), (c, f, tns))

    def subtypes(self, key):
        """Typer som direkt ärver key via complexContent/extension."""
        out = []
        for k, (el, f, tns) in self.types.items():
            ext = el.find(f"{Q(XS, 'complexContent')}/{Q(XS, 'extension')}")
            if ext is not None and self.resolve(ext.get("base"), f, tns) == key:
                out.append(k)
        return out

    def resolve(self, qname, f, tns):
        if ":" in qname:
            p, local = qname.split(":", 1)
            ns = self.nsmaps[f].get(p)
        else:
            local, ns = qname, self.nsmaps[f].get("", tns)
        if ns == XS:
            return ("xs", local)
        return (ns, local)


class Field:
    def __init__(self, name, xsd_type, fhir_type, card, doc, children=None, renamed_from=None, binding=None):
        self.name, self.xsd_type, self.fhir_type, self.card, self.doc = name, xsd_type, fhir_type, card, doc
        self.children = children or []
        self.renamed_from = renamed_from
        self.binding = binding


ENUMS = {}  # (typ, fil) -> [värden], fylls av build_fields när --codesystems används
CODESYSTEMS = False


def build_fields(S, ctype, f, tns, stack, used_types):
    """Returnera fältlistan för en complexType (sekvens)."""
    fields = []
    type_label = re.sub(r"(Request|Response)?(Type)?$", "", ctype.get("name") or "")
    if ISO and type_label.isupper():
        type_label = snake_to_camel(type_label)
    attrs = []
    if ISO:
        particles, attrs = content_of(S, ctype, f, tns, stack, used_types)
    else:
        seq = ctype.find(Q(XS, "sequence"))
        if seq is None:
            return fields
        particles = [(el, False) for el in seq.findall(Q(XS, "element"))]
    for el, optional in particles:
        name, t = el.get("name"), el.get("type")
        ref_doc = ""
        if el.get("ref"):
            # Elementreferens, t.ex. eHM:s tillägg i en minor-version via ett separat *_ext.xsd
            rkey = S.resolve(el.get("ref"), f, tns)
            rdef = S.elements.get(rkey)
            if rdef is None:
                continue
            name, t = rdef[0].get("name"), rdef[0].get("type")
            ref_doc = doc_of(rdef[0]) + f" (Refererat element ur {rdef[1].name}, namnrymd {rkey[0]}.)"
            f_ref, tns_ref = rdef[1], rdef[2]
        inline_key = None
        if t is None and name is not None:
            # Anonym typ direkt i elementet: registreras under elementets namn.
            inl = el.find(Q(XS, "simpleType"))
            if inl is None:
                inl = el.find(Q(XS, "complexType"))
            if inl is not None:
                inline_key = (tns, name)
                S.types.setdefault((tns, "#" + name), (inl, f, tns))
                t = "#" + name
        if name is None or t is None:
            continue
        lo = "0" if optional else el.get("minOccurs", "1")
        hi = el.get("maxOccurs", "1")
        card = f"{lo}..{'*' if hi == 'unbounded' else hi}"
        doc = doc_of(el) or ref_doc
        key = S.resolve(t, f_ref, tns_ref) if el.get("ref") else S.resolve(t, f, tns)
        if inline_key:
            key = (tns, t)
        local = key[1].lstrip("#")
        if local == "ExtensionType":
            continue
        fhir_name, renamed = name, None
        if name in RESERVED:
            fhir_name, renamed = lower_first(type_label) + name[:1].upper() + name[1:], name
        if ISO and key not in S.types and local in ISO_TYPES:
            note = " (ISO 21090 ANY, polymorft värde, modellerat som string.)" if local == "ANY" else ""
            fields.append(Field(fhir_name, local, ISO_TYPES[local], card, doc + note, renamed_from=renamed))
            continue
        if key[0] == "xs":
            ft = PRIMITIVES.get(local, "string")
            fields.append(Field(fhir_name, local, ft, card, doc, renamed_from=renamed))
            continue
        tdef = S.types.get(key)
        if tdef is None:
            fields.append(Field(fhir_name, local, "string", card, doc + " (Okänd typ, modellerad som string.)", renamed_from=renamed))
            continue
        tel, tf, ttns = tdef
        if tel.tag == Q(XS, "simpleType"):
            base = tel.find(f"{Q(XS, 'restriction')}")
            b = S.resolve(base.get("base"), tf, ttns)[1] if base is not None else "string"
            values = [e.get("value") for e in tel.iter(Q(XS, "enumeration"))]
            if CODESYSTEMS and values:
                ENUMS.setdefault(local, values)
                fields.append(Field(fhir_name, local, "code", card, doc, renamed_from=renamed, binding=local))
                continue
            fields.append(Field(fhir_name, local, PRIMITIVES.get(b, "string"), card, doc, renamed_from=renamed))
            continue
        used_types.setdefault((local, tf.name), (tel, tf, ttns))
        if key in stack:
            fields.append(Field(fhir_name, local, "string", card, doc + " (Rekursiv typ, ej utvecklad.)", renamed_from=renamed))
            continue
        kids = build_fields(S, tel, tf, ttns, stack + [key], used_types)
        tdoc = doc or doc_of(tel)
        if ISO and tel.get("abstract") == "true":
            # Abstrakt typ (t.ex. EN13606 CONTENT/ITEM): subtypens egna element som valfria grupper.
            subs = S.subtypes(key)
            have = {k.name for k in kids}
            for skey in subs:
                if skey in stack:
                    continue
                sel, sf, stns = S.types[skey]
                used_types.setdefault((skey[1], sf.name), (sel, sf, stns))
                own = [k for k in build_fields(S, sel, sf, stns, stack + [key, skey], used_types) if k.name not in have]
                kids.append(Field(snake_to_camel(skey[1]), skey[1], "BackboneElement", "0..1",
                                  f"Element som bara finns när instansen är av subtypen {skey[1]} (xsi:type).", own))
            if subs:
                tdoc += f" Abstrakt typ; instansen anges med xsi:type som en av {', '.join(k[1] for k in subs)}."
        fields.append(Field(fhir_name, local, "BackboneElement", card, tdoc, kids, renamed_from=renamed))
    return fields + attrs


def content_of(S, ctype, f, tns, stack, used_types):
    """Element (med flagga för valfrihet) och attribut i en complexType, inklusive ärvda via
    complexContent/extension. Element i xs:choice blir valfria."""
    particles, attrs = [], []
    body = ctype
    cc = ctype.find(Q(XS, "complexContent"))
    if cc is not None:
        ext = cc.find(Q(XS, "extension"))
        if ext is None:
            ext = cc.find(Q(XS, "restriction"))
        if ext is not None:
            bkey = S.resolve(ext.get("base"), f, tns)
            if bkey in S.types and bkey not in stack:
                bel, bf, btns = S.types[bkey]
                bp, ba = content_of(S, bel, bf, btns, stack + [bkey], used_types)
                particles += bp
                attrs += ba
            body = ext

    def walk(node, optional):
        for c in node:
            if c.tag == Q(XS, "element"):
                particles.append((c, optional))
            elif c.tag == Q(XS, "choice"):
                walk(c, True)
            elif c.tag == Q(XS, "sequence"):
                walk(c, optional or c.get("minOccurs") == "0")

    for c in body:
        if c.tag in (Q(XS, "sequence"), Q(XS, "choice")):
            walk(c, c.tag == Q(XS, "choice") or c.get("minOccurs") == "0")
    for a in body.findall(Q(XS, "attribute")):
        name, t = a.get("name"), a.get("type") or "xs:string"
        if not name:
            continue
        card = "1..1" if a.get("use") == "required" else "0..1"
        key = S.resolve(t, f, tns)
        tdef = S.types.get(key)
        doc = doc_of(a) + " (XML-attribut.)"
        fname = name if name not in RESERVED else lower_first(re.sub(r"(Type)?$", "", ctype.get("name") or "")) + name[:1].upper() + name[1:]
        if tdef is not None and tdef[0].tag == Q(XS, "simpleType"):
            values = [e.get("value") for e in tdef[0].iter(Q(XS, "enumeration"))]
            if CODESYSTEMS and values:
                ENUMS.setdefault(key[1], values)
                attrs.append(Field(fname, key[1], "code", card, doc.strip(), renamed_from=name if fname != name else None, binding=key[1]))
                continue
        ft = ISO_TYPES.get(key[1]) if key not in S.types and key[1] in ISO_TYPES else PRIMITIVES.get(key[1], "string")
        attrs.append(Field(fname, key[1], ft, card, doc.strip(), renamed_from=name if fname != name else None))
    return particles, attrs


def fsh_str(s):
    return s.replace("\\", "\\\\").replace('"', '\\"')


def short_of(f):
    return f.name


def fsh_lines(fields, depth=0):
    out = []
    for fl in fields:
        ind = "  " * depth
        d = fl.doc or fl.name
        if fl.fhir_type == "string" and fl.xsd_type in ("long", "unsignedLong"):
            d += f" (xs:{fl.xsd_type} i schemat.)"
        if fl.renamed_from:
            d += f" Heter {fl.renamed_from} i schemat."
        if fl.fhir_type == "BackboneElement" and not fl.children:
            d += " Typen har inga element utöver utökningspunkter."
        out.append(f'{ind}* {fl.name} {fl.card} {fl.fhir_type} "{fsh_str(short_of(fl))}" "{fsh_str(d)}"')
        if fl.binding:
            out.append(f"{ind}* {fl.name} from {cs_name(fl.binding)}VS (required)")
        out += fsh_lines(fl.children, depth + 1)
    return out


def cs_name(enum_type):
    return re.sub(r"(Enum|Type)$", "", enum_type)


def write_codesystems(ig, prefix, displays, domain, version, date):
    cs_dir, vs_dir = ig / "input/fsh/codesystems", ig / "input/fsh/valuesets"
    cs_dir.mkdir(parents=True, exist_ok=True)
    vs_dir.mkdir(parents=True, exist_ok=True)
    urls = []
    for enum, values in sorted(ENUMS.items()):
        name = cs_name(enum)
        slug = f"{prefix}-{name.lower()}"
        info = displays.get(enum, {})
        title = info.get("title", name)
        source = info.get("source", "")
        codes = info.get("codes", {})
        url = f"https://fhir.inera.se/CodeSystem/{slug}-cs"
        urls.append({"enum": enum, "name": name, "title": title, "url": url,
                     "codesystem": f"{slug}-cs", "valueset": f"{slug}-vs", "codes": values})
        desc = f"Koder för {enum} i domänschemat" + (f". Visningstexter ur {source}" if source else "") + "."
        cs = [f"// Genererad från XSD för {domain} v{version} (scripts/xsd_to_ig.py --codesystems)",
              f"// Genererad: {date}", "", f"CodeSystem: {name}CS", f"Id: {slug}-cs", f'Title: "{fsh_str(title)}"',
              f'Description: "{fsh_str(desc)}"', f'* ^url = "{url}"', "* ^status = #active",
              "* ^content = #complete", "* ^caseSensitive = true"]
        for v in values:
            d = codes.get(v)
            cs.append(f'* #{v} "{fsh_str(d[0] if isinstance(d, list) else d or v)}"'
                      + (f' "{fsh_str(d[1])}"' if isinstance(d, list) and len(d) > 1 and d[1] else ""))
        (cs_dir / f"{name}CS.fsh").write_text("\n".join(cs) + "\n")
        vs = [f"// Genererad från XSD för {domain} v{version}", f"// Värdemängd för {name}CS", f"// Genererad: {date}", "",
              f"ValueSet: {name}VS", f"Id: {slug}-vs", f'Title: "{fsh_str(title)}"',
              f'Description: "Alla koder i {name}CS."', "* ^status = #active", f"* include codes from system {name}CS"]
        (vs_dir / f"{name}VS.fsh").write_text("\n".join(vs) + "\n")
    return urls


def md_cell(s):
    s = s.replace("|", "\\|")
    return re.sub(r"<([^>]*)>", r"`<\1>`", s)


def md_rows(fields, depth=0):
    out = []
    for fl in fields:
        prefix = "../" * depth
        nm = fl.renamed_from or fl.name
        out.append(f"| {prefix}{nm} | {fl.xsd_type} | {md_cell(fl.doc)} | {fl.card} |")
        out += md_rows(fl.children, depth + 1)
    return out


def type_table(fields):
    rows = ["| Namn | Typ | Beskrivning | Kardinalitet |", "| :--- | :--- | :--- | :--- |"]
    for fl in fields:
        rows.append(f"| {fl.renamed_from or fl.name} | {fl.xsd_type} | {md_cell(fl.doc)} | {fl.card} |")
    return rows


def parse_wsdl(path):
    root = ET.parse(path).getroot()
    doc = ""
    for d in root.iter(Q(XS, "documentation")):
        doc = "\n".join(l.strip() for l in "".join(d.itertext()).strip().splitlines())
        break
    nsmap = {}
    for ev, (p, u) in ET.iterparse(path, events=["start-ns"]):
        nsmap.setdefault(p, u)
    headers = []
    for m in root.findall(Q(WSDL, "message")):
        if not m.get("name", "").endswith("Request"):
            continue
        for part in m.findall(Q(WSDL, "part")):
            if part.get("name") == "parameters":
                continue
            p, local = part.get("element").split(":")
            wd = part.find(Q(WSDL, "documentation"))
            headers.append((part.get("name"), nsmap.get(p), local, " ".join("".join(wd.itertext()).split()) if wd is not None else ""))
    action = ""
    actions = {}
    for b in root.findall(Q(WSDL, "binding")):
        for bop in b.findall(Q(WSDL, "operation")):
            for op in bop.iter(Q(SOAP, "operation")):
                action = op.get("soapAction", "")
                actions[bop.get("name")] = action
    # Operationer per portType: (namn, begäranselement, svarselement, SOAP-huvuden, soapAction).
    # En Uppdrag-Resultat-interaktion har två portTypes (Responder och Initiator).
    msgs = {m.get("name"): m for m in root.findall(Q(WSDL, "message"))}

    def body_el(msg_ref):
        m = msgs.get(msg_ref.split(":")[-1])
        for part in (m.findall(Q(WSDL, "part")) if m is not None else []):
            if part.get("name") == "parameters":
                pr, local = part.get("element").split(":")
                return (nsmap.get(pr), local)
        return None

    ops = []
    for pt in root.findall(Q(WSDL, "portType")):
        for op in pt.findall(Q(WSDL, "operation")):
            i, o = op.find(Q(WSDL, "input")), op.find(Q(WSDL, "output"))
            m = msgs.get(i.get("message").split(":")[-1])
            hdrs = []
            for part in m.findall(Q(WSDL, "part")):
                if part.get("name") == "parameters":
                    continue
                pr, local = part.get("element").split(":")
                wd = part.find(Q(WSDL, "documentation"))
                hdrs.append((part.get("name"), nsmap.get(pr), local, " ".join("".join(wd.itertext()).split()) if wd is not None else ""))
            ops.append({"name": op.get("name"), "portType": pt.get("name"), "request": body_el(i.get("message")),
                        "response": body_el(o.get("message")) if o is not None else None, "headers": hdrs,
                        "soap_action": actions.get(op.get("name"), "")})
    return {"name": root.get("name"), "tns": root.get("targetNamespace"), "doc": doc, "headers": headers,
            "soap_action": action, "ops": ops}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("schemas")
    ap.add_argument("ig")
    ap.add_argument("--domain", required=True)
    ap.add_argument("--version", required=True)
    ap.add_argument("--date", default="2026-09-26")
    ap.add_argument("--codesystems", metavar="PREFIX", help="gör enumerationer till CodeSystem/ValueSet")
    ap.add_argument("--code-displays", help="JSON med titlar och visningstexter per enumerationstyp")
    ap.add_argument("--iso-datatypes", action="store_true",
                    help="mappa ISO 21090-datatyper (II, CD, TS ...) till FHIR-typer; följ complexContent-arv, xs:choice och attribut")
    ap.add_argument("--source-note", default="ingen TKB finns i källan", help="källnotering i FSH-filernas huvud")
    a = ap.parse_args()
    global CODESYSTEMS, ISO
    CODESYSTEMS = bool(a.codesystems)
    ISO = a.iso_datatypes
    S = Schemas(a.schemas)
    ig = Path(a.ig)
    lm = ig / "input/fsh/logical-models"
    gen = ig / "xsd-generated"
    lm.mkdir(parents=True, exist_ok=True)
    gen.mkdir(parents=True, exist_ok=True)
    used_types = {}
    contracts = []
    # Finns flera versioner av samma tjänsteinteraktion modelleras bara den högsta.
    latest = {}
    for wsdl in sorted(Path(a.schemas).rglob("*Interaction*.wsdl")):
        m = re.search(r"_(\d+(?:\.\d+)*)_", wsdl.name)
        ver = tuple(int(x) for x in m.group(1).split(".")) if m else ()
        name = parse_wsdl(wsdl)["name"]
        if name not in latest or ver > latest[name][0]:
            latest[name] = (ver, wsdl)
    for wsdl in sorted(w for _, w in latest.values()):
        w = parse_wsdl(wsdl)
        m = re.search(r"_(\d+(?:\.\d+)*)_", wsdl.name)
        if len(w["ops"]) > 1:
            # Uppdrag-Resultat (Responder + Initiator) eller flera operationer: ett kontrakt per operation.
            variants = []
            for op in w["ops"]:
                req_el, res_el = S.elements[op["request"]], S.elements[op["response"]]
                variants.append((op["name"], req_el, res_el, req_el[1], op["headers"], op["soap_action"],
                                 m.group(1) if m else ET.parse(req_el[1]).getroot().get("version", "")))
        else:
            cname_guess = w["name"].replace("Interaction", "")
            # Tjänsteschemat som WSDL:en importerar, annars det som definierar kontraktets element.
            imported = [wsdl.parent / i.get("schemaLocation") for i in ET.parse(wsdl).getroot().iter(Q(XS, "import"))
                        if "Responder" in (i.get("schemaLocation") or "")]
            responder = next((x for x in imported if x.exists()), None) or next(
                x for x in sorted(wsdl.parent.glob("*Responder*.xsd"))
                if re.search(rf"""name=["']{cname_guess}["']""", x.read_text(encoding="utf-8")))
            rroot = ET.parse(responder).getroot()
            rtns = rroot.get("targetNamespace")
            cname = w["name"].replace("Interaction", "")
            variants = [(cname, S.elements[(rtns, cname)], S.elements[(rtns, cname + "Response")], responder,
                         w["headers"], w["soap_action"], m.group(1) if m else rroot.get("version", ""))]
        for cname, req_el, res_el, responder, w_headers, soap_action, cver in variants:
            rtns = req_el[2]

            def fields_for(el):
                e, f, tns = el
                key = S.resolve(e.get("type"), f, tns)
                t, tf, ttns = S.types[key]
                return build_fields(S, t, tf, ttns, [key], used_types), key[1]

            req_fields, req_type = fields_for(req_el)
            res_fields, res_type = fields_for(res_el)
            header_fields = []
            for hname, hns, hlocal, hdoc in w_headers:
                he = S.elements.get((hns, hlocal))
                fname = lower_first(hname)
                if he is None:
                    header_fields.append(Field(fname, hlocal, "string", "1..1", hdoc))
                    continue
                e, f, tns = he
                key = S.resolve(e.get("type"), f, tns)
                tdef = S.types.get(key)
                if tdef is None or tdef[0].tag == Q(XS, "simpleType"):
                    header_fields.append(Field(fname, key[1], "string", "1..1", f"SOAP-huvud {hname}. {hdoc}".strip()))
                else:
                    kids = build_fields(S, tdef[0], tdef[1], tdef[2], [key], {})
                    header_fields.append(Field(fname, key[1], "BackboneElement", "1..1", f"SOAP-huvud {hname}. {hdoc}".strip(), kids))
            hdr = [f"// Genererad från XSD för {a.domain} v{a.version} ({a.source_note}; scripts/xsd_to_ig.py)",
                   f"// Kontrakt: {cname} v{cver}", f"// Genererad: {a.date}", ""]
            cid = cname.lower()
            req = hdr + [f"Logical: {cname}Request", f"Id: {cid}-request", f'Title: "{cname} — Request"',
                         'Description: """', f"  Logisk modell för begäran i {cname}",
                         f"  ({rtns}, {req_type}), inklusive SOAP-huvuden enligt WSDL.", '"""',
                         "Characteristics: #can-be-target"] + fsh_lines(header_fields + req_fields)
            (lm / f"{cname}Request.fsh").write_text("\n".join(req) + "\n")
            has_res = bool(res_fields)
            if has_res:
                res = hdr + [f"Logical: {cname}", f"Id: {cid}", f'Title: "{cname} — Response"',
                             'Description: """', f"  Logisk modell för svaret i {cname}",
                             f"  ({rtns}, {res_type}).", '"""',
                             "Characteristics: #can-be-target"] + fsh_lines(res_fields)
                (lm / f"{cname}.fsh").write_text("\n".join(res) + "\n")
            else:
                (lm / f"{cname}.fsh").unlink(missing_ok=True)
            table = ["| Namn | Typ | Beskrivning | Kardinalitet |", "| :--- | :--- | :--- | :--- |",
                     "| **Begäran** | | | |"] + md_rows(req_fields) + ["| **Svar** | | | |"]
            table += md_rows(res_fields) if has_res else ["| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |"]
            (gen / f"{cname}.md").write_text("\n".join(table) + "\n")
            contracts.append({
                "id": cname, "version": cver, "responder_ns": rtns, "wsdl_ns": w["tns"], "soap_action": soap_action,
                "wsdl_doc": w["doc"], "wsdl_file": wsdl.name, "responder_file": responder.name,
                "request_type": req_type, "response_type": res_type, "has_response_model": has_res,
                "headers": [{"name": h[0], "element": h[2], "doc": h[3]} for h in w_headers],
            })
    types_md = []
    names = [n for n, _ in used_types]
    for name, fname in sorted(used_types):
        tel, tf, ttns = used_types[(name, fname)]
        fl = build_fields(S, tel, tf, ttns, [(ttns, name)], {})
        same = [(n, ff) for n, ff in used_types if n == name]
        suffixes = [used_types[k][2].rsplit(':', 1)[-1] for k in same]
        suffix = ttns.rsplit(':', 1)[-1]
        # Namnrymdens version räcker oftast; annars schemafilens namn (t.ex. ParameterType i flera tjänstescheman).
        head = name if names.count(name) == 1 else f"{name} ({suffix if suffixes.count(suffix) == 1 else Path(tf.name).stem})"
        types_md += [f"### {head}", "", f"Domänschema `{tf.name}` (namnrymd `{ttns}`).", ""]
        d = doc_of(tel)
        if d:
            types_md += [d, ""]
        types_md += (type_table(fl) if fl else ["Typen har inga element utöver utökningspunkter."]) + [""]
    (gen / "types.md").write_text("\n".join(types_md))
    (gen / "contracts.json").write_text(json.dumps(contracts, ensure_ascii=False, indent=2) + "\n")
    if CODESYSTEMS:
        displays = json.load(open(a.code_displays)) if a.code_displays else {}
        urls = write_codesystems(ig, a.codesystems, displays, a.domain, a.version, a.date)
        (gen / "codesystems.json").write_text(json.dumps(urls, indent=2) + "\n")
        print(f"[xsd_to_ig] {len(urls)} kodverk")
    print(f"[xsd_to_ig] {len(contracts)} kontrakt, {len(used_types)} gemensamma typer -> {ig}")


if __name__ == "__main__":
    sys.exit(main())
