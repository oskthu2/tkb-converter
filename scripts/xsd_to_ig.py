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
    def __init__(self, name, xsd_type, fhir_type, card, doc, children=None, renamed_from=None):
        self.name, self.xsd_type, self.fhir_type, self.card, self.doc = name, xsd_type, fhir_type, card, doc
        self.children = children or []
        self.renamed_from = renamed_from


def build_fields(S, ctype, f, tns, stack, used_types):
    """Returnera fältlistan för en complexType (sekvens)."""
    fields = []
    seq = ctype.find(Q(XS, "sequence"))
    if seq is None:
        return fields
    type_label = re.sub(r"(Request|Response)?(Type)?$", "", ctype.get("name") or "")
    for el in seq.findall(Q(XS, "element")):
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
        if name is None or t is None:
            continue
        lo = el.get("minOccurs", "1")
        hi = el.get("maxOccurs", "1")
        card = f"{lo}..{'*' if hi == 'unbounded' else hi}"
        doc = doc_of(el) or ref_doc
        key = S.resolve(t, f_ref, tns_ref) if el.get("ref") else S.resolve(t, f, tns)
        local = key[1]
        if local == "ExtensionType":
            continue
        fhir_name, renamed = name, None
        if name in RESERVED:
            fhir_name, renamed = lower_first(type_label) + name[:1].upper() + name[1:], name
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
            fields.append(Field(fhir_name, local, PRIMITIVES.get(b, "string"), card, doc, renamed_from=renamed))
            continue
        used_types.setdefault((local, tf.name), (tel, tf, ttns))
        if key in stack:
            fields.append(Field(fhir_name, local, "string", card, doc + " (Rekursiv typ, ej utvecklad.)", renamed_from=renamed))
            continue
        kids = build_fields(S, tel, tf, ttns, stack + [key], used_types)
        fields.append(Field(fhir_name, local, "BackboneElement", card, doc or doc_of(tel), kids, renamed_from=renamed))
    return fields


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
        out += fsh_lines(fl.children, depth + 1)
    return out


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
    for op in root.iter(Q(SOAP, "operation")):
        action = op.get("soapAction", "")
    return {"name": root.get("name"), "tns": root.get("targetNamespace"), "doc": doc, "headers": headers, "soap_action": action}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("schemas")
    ap.add_argument("ig")
    ap.add_argument("--domain", required=True)
    ap.add_argument("--version", required=True)
    ap.add_argument("--date", default="2026-09-26")
    a = ap.parse_args()
    S = Schemas(a.schemas)
    ig = Path(a.ig)
    lm = ig / "input/fsh/logical-models"
    gen = ig / "xsd-generated"
    lm.mkdir(parents=True, exist_ok=True)
    gen.mkdir(parents=True, exist_ok=True)
    used_types = {}
    contracts = []
    for wsdl in sorted(Path(a.schemas).rglob("*Interaction*.wsdl")):
        w = parse_wsdl(wsdl)
        cname_guess = parse_wsdl(wsdl)["name"].replace("Interaction", "")
        responder = next(x for x in sorted(wsdl.parent.glob("*Responder*.xsd"))
                         if f'name="{cname_guess}"' in x.read_text(encoding="utf-8"))
        rroot = ET.parse(responder).getroot()
        rtns = rroot.get("targetNamespace")
        cname = w["name"].replace("Interaction", "")
        m = re.search(r"_(\d+(?:\.\d+)*)_", wsdl.name)
        cver = m.group(1) if m else rroot.get("version", "")
        req_el = S.elements[(rtns, cname)]
        res_el = S.elements[(rtns, cname + "Response")]

        def fields_for(el):
            e, f, tns = el
            key = S.resolve(e.get("type"), f, tns)
            t, tf, ttns = S.types[key]
            return build_fields(S, t, tf, ttns, [key], used_types), key[1]

        req_fields, req_type = fields_for(req_el)
        res_fields, res_type = fields_for(res_el)
        header_fields = []
        for hname, hns, hlocal, hdoc in w["headers"]:
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
        hdr = [f"// Genererad från XSD för {a.domain} v{a.version} (ingen TKB finns i källan; scripts/xsd_to_ig.py)",
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
            "id": cname, "version": cver, "responder_ns": rtns, "wsdl_ns": w["tns"], "soap_action": w["soap_action"],
            "wsdl_doc": w["doc"], "wsdl_file": wsdl.name, "responder_file": responder.name,
            "request_type": req_type, "response_type": res_type, "has_response_model": has_res,
            "headers": [{"name": h[0], "element": h[2], "doc": h[3]} for h in w["headers"]],
        })
    types_md = []
    names = [n for n, _ in used_types]
    for name, fname in sorted(used_types):
        tel, tf, ttns = used_types[(name, fname)]
        fl = build_fields(S, tel, tf, ttns, [(ttns, name)], {})
        head = name if names.count(name) == 1 else f"{name} ({ttns.rsplit(':', 1)[-1]})"
        types_md += [f"### {head}", "", f"Domänschema `{tf.name}` (namnrymd `{ttns}`).", ""]
        d = doc_of(tel)
        if d:
            types_md += [d, ""]
        types_md += (type_table(fl) if fl else ["Typen har inga element utöver utökningspunkter."]) + [""]
    (gen / "types.md").write_text("\n".join(types_md))
    (gen / "contracts.json").write_text(json.dumps(contracts, ensure_ascii=False, indent=2) + "\n")
    print(f"[xsd_to_ig] {len(contracts)} kontrakt, {len(used_types)} gemensamma typer -> {ig}")


if __name__ == "__main__":
    sys.exit(main())
