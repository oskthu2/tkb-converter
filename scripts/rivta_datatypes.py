#!/usr/bin/env python3
"""De gemensamma RIV-TA-datatyperna (IIType, CVType, TimeStampType ...) som FHIR-artefakter.

Källan är RIV-TA Best Practice, "De facto-konventioner för datatyper"
(https://bitbucket.org/rivta-domains/best-practice), vendrad i
igs/rivta-datatyper/source-xsd/, plus några enkla typer som nästan alla domänscheman
definierar likadant (tillagda-datatyper.xml). Typerna publiceras en gång i IG:n
igs/rivta-datatyper (paket inera.rivta.datatypes) och alla TKB-IG:er refererar dit
(se tkb-fsh-model, "Datatyper enligt schemat").

    scripts/rivta_datatypes.py            # skriv om igs/rivta-datatyper/input/fsh/
    scripts/rivta_datatypes.py --check    # exit 1 om FSH-filerna inte är aktuella

Modulen används också av scripts/xsd_logical_models.py för att avgöra om en domäns
typ med samma namn är identisk med den gemensamma (refereras direkt), bara skärper
kardinaliteten (lokal typ som ärver den gemensamma) eller skiljer sig (domänens egen).
"""
import argparse
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
IG = ROOT / "igs" / "rivta-datatyper"
SOURCES = sorted((IG / "source-xsd").glob("*.xml"))
PACKAGE_ID = "inera.rivta.datatypes"
PACKAGE_VERSION = "1.0.0"
CANONICAL = "https://fhir.inera.se/ig/rivta-datatypes"
WEB_URL = "https://oskthu2.github.io/tkb-converter/rivta-datatyper"
XS = "{http://www.w3.org/2001/XMLSchema}"

PRIMITIVES = {
    "string": "string", "normalizedString": "string", "token": "string", "boolean": "boolean",
    "int": "integer", "integer": "integer", "short": "integer", "positiveInteger": "positiveInt",
    "nonNegativeInteger": "unsignedInt", "unsignedInt": "unsignedInt", "long": "integer64",
    "unsignedLong": "integer64", "decimal": "decimal", "double": "decimal", "float": "decimal",
    "dateTime": "dateTime", "date": "date", "time": "time", "anyURI": "uri",
    "base64Binary": "base64Binary",
}
# integer64 finns inte i R4: xs:long blir string i R4-modellerna
R4_FALLBACK = {"integer64": "string"}


# Elementbeskrivningar (de facto-konventionernas wikisida, sammanfattad). Saknas en rad
# används elementets namn och schematyp.
ELEMENT_DOCS = {
    "IIType.root": "Identifierarens namnrymd, oftast ett OID (t.ex. 1.2.752.129.2.1.4.1 för HSA-id) eller ett UUID.",
    "IIType.extension": "Identifierarens värde inom namnrymden i root, t.ex. själva HSA-id:t.",
    "CVType.code": "Koden i kodverket.",
    "CVType.codeSystem": "Kodverkets OID.",
    "CVType.codeSystemName": "Kodverkets namn i klartext.",
    "CVType.codeSystemVersion": "Kodverkets version.",
    "CVType.displayName": "Kodens klartext enligt kodverket.",
    "CVType.originalText": "Fritext när begreppet inte kan anges som kod (då anges inte code och codeSystem).",
    "DatePeriodType.start": "Startdatum (ÅÅÅÅMMDD).",
    "DatePeriodType.end": "Slutdatum (ÅÅÅÅMMDD).",
    "TimePeriodType.start": "Starttidpunkt (ÅÅÅÅMMDDttmmss).",
    "TimePeriodType.end": "Sluttidpunkt (ÅÅÅÅMMDDttmmss).",
    "PQType.value": "Mätvärdet.",
    "PQType.unit": "Enhet, enligt UCUM om inget annat anges.",
    "PQIntervalType.low": "Intervallets nedre gräns.",
    "PQIntervalType.lowClosed": "Sant om nedre gränsen ingår i intervallet.",
    "PQIntervalType.high": "Intervallets övre gräns.",
    "PQIntervalType.highClosed": "Sant om övre gränsen ingår i intervallet.",
    "PQIntervalType.unit": "Enhet för båda gränserna, enligt UCUM om inget annat anges.",
    "PartialDateType.format": "Anger noggrannheten i value: YYYY, YYYYMM eller YYYYMMDD.",
    "PartialDateType.value": "Datumvärdet med den noggrannhet som format anger.",
    "PersonIdType.id": "Personidentifieraren, t.ex. ett personnummer (ÅÅÅÅMMDDNNNN).",
    "PersonIdType.type": "OID för typ av identifierare, t.ex. 1.2.752.129.2.1.3.1 (personnummer) eller 1.2.752.129.2.1.3.3 (samordningsnummer).",
    "ResultType.resultCode": "Resultatkod: OK, INFO eller ERROR.",
    "ResultType.resultText": "Förklarande text till resultatkoden.",
    "MultimediaType.id": "Objektets id.",
    "MultimediaType.mediaType": "Objektets MIME-typ.",
    "MultimediaType.value": "Objektet som binärdata (base64). Anges om reference inte anges.",
    "MultimediaType.reference": "Referens (URL) till objektet. Anges om value inte anges.",
}


def fhir_primitive(xsd_local: str) -> str:
    t = PRIMITIVES.get(xsd_local, "string")
    return R4_FALLBACK.get(t, t)


def _load():
    types = {}
    for f in SOURCES:
        txt = f.read_text(encoding="utf-8")
        txt = re.sub(r"<\?xml[^>]*\?>", "", txt)
        root = ET.fromstring(
            "<r xmlns:xs='http://www.w3.org/2001/XMLSchema' xmlns:tns='urn:tns' xmlns:codes='urn:codes'>"
            + txt + "</r>")
        for c in root:
            if c.get("name"):
                types[c.get("name")] = c
    return types


GLOBAL = _load()


def doc_of(el) -> str:
    d = el.find(f"{XS}annotation/{XS}documentation")
    return " ".join("".join(d.itertext()).split()) if d is not None else ""


def local(qname: str) -> str:
    return (qname or "").split(":")[-1]


def simple_signature(el):
    r = el.find(f"{XS}restriction")
    if r is None:
        return ("simple", "?", (), ())
    return ("simple", local(r.get("base")),
            tuple(p.get("value") for p in r.findall(f"{XS}pattern")),
            tuple(e.get("value") for e in r.findall(f"{XS}enumeration")))


def complex_signature(el):
    """[(namn, typ, min, max)] för elementen i typens sekvens (xs:any utelämnas)."""
    out = []
    for e in el.iter(f"{XS}element"):
        name = e.get("name") or local(e.get("ref"))
        out.append((name, local(e.get("type")) if e.get("type") else ("@ref" if e.get("ref") else "#inline"),
                    e.get("minOccurs", "1"), e.get("maxOccurs", "1")))
    return out


def compare(name: str, domain_el):
    """identical | narrowed | different | None (ingen gemensam typ med det namnet)."""
    g = GLOBAL.get(name)
    if g is None or g.tag != domain_el.tag:
        return None if g is None else "different"
    if g.tag == f"{XS}simpleType":
        return "identical" if simple_signature(g) == simple_signature(domain_el) else "different"
    if domain_el.find(f"{XS}complexContent") is not None or domain_el.find(f"{XS}simpleContent") is not None:
        return "different"
    gs, ds = complex_signature(g), complex_signature(domain_el)
    if gs == ds:
        return "identical"
    if [x[:2] for x in gs] == [x[:2] for x in ds]:
        def num(v):
            return 10 ** 9 if v == "unbounded" else int(v)
        if all(num(d[2]) >= num(g[2]) and num(d[3]) <= num(g[3]) for g, d in zip(gs, ds)):
            return "narrowed"
    return "different"


def url(name: str) -> str:
    return f"{CANONICAL}/StructureDefinition/{name}"


def is_simple(name: str) -> bool:
    g = GLOBAL.get(name)
    return g is not None and g.tag == f"{XS}simpleType"


# ─────────────────────────── FSH för den gemensamma IG:n ───────────────────────────

def fsh_str(s: str) -> str:
    return s.replace("\\", "\\\\").replace('"', '\\"')


def regex_invariant(inv_id: str, patterns, what: str) -> list:
    alts = "|".join(f"(?:{p})" for p in patterns)
    fhirpath = f"matches('^(?:{alts})$')".replace("\\", "\\\\")  # FHIRPath-sträng: \ escapas
    return ["", f"Invariant: {inv_id}",
            f'Description: "{fsh_str(what)} ska följa mönstret i schemat: {fsh_str(" | ".join(patterns))}"',
            f'Expression: "{fsh_str(fhirpath)}"', "Severity: #error"]


def element_type_lines(path: str, xsd_type: str, card: str, short: str, definition: str) -> list:
    """FSH-rader för ett element vars typ är en gemensam typ eller en xs-primitiv."""
    if xsd_type in GLOBAL and is_simple(xsd_type):
        return [f'* {path} {card} string "{fsh_str(short)}" "{fsh_str(definition)}"', f"* {path} only {xsd_type}"]
    if xsd_type in GLOBAL:
        return [f'* {path} {card} {xsd_type} "{fsh_str(short)}" "{fsh_str(definition)}"']
    if xsd_type.endswith("Enum"):
        return [f'* {path} {card} code "{fsh_str(short)}" "{fsh_str(definition)} Kodverket ({xsd_type}) definieras i respektive domänschema."']
    return [f'* {path} {card} {fhir_primitive(xsd_type)} "{fsh_str(short)}" "{fsh_str(definition)}"']


def card_of(e) -> str:
    hi = e.get("maxOccurs", "1")
    return f"{e.get('minOccurs', '1')}..{'*' if hi == 'unbounded' else hi}"


def global_fsh() -> dict:
    files = {}
    for name, el in sorted(GLOBAL.items()):
        doc = doc_of(el) or name
        if el.tag == f"{XS}simpleType":
            _, base, patterns, enums = simple_signature(el)
            lines = [f"Profile: {name}", f"Parent: {fhir_primitive(base)}", f"Id: {name}", f'Title: "{name}"',
                     f'Description: "{fsh_str(doc)} (xs:simpleType, restriktion av xs:{base}.)"',
                     f'* ^version = "{PACKAGE_VERSION}"']
            if patterns:
                inv = f"rivta-{name.lower()}-pattern"
                lines.append(f"* obeys {inv}")
                lines += regex_invariant(inv, patterns, name)
        else:
            lines = [f"Logical: {name}", f"Id: {name}", f'Title: "{name}"',
                     f'Description: "{fsh_str(doc)} (xs:complexType.)"', "Characteristics: #can-be-type",
                     f'* ^version = "{PACKAGE_VERSION}"']
            for e in el.iter(f"{XS}element"):
                n = e.get("name")
                d = ELEMENT_DOCS.get(f"{name}.{n}", n)
                lines += element_type_lines(n, local(e.get("type")), card_of(e), n,
                                            f"{d} Typ i schemat: {local(e.get('type'))}.")
        files[f"{name}.fsh"] = "// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.\n\n" + "\n".join(lines) + "\n"
    return files


def index_md() -> str:
    rows = []
    for name, el in sorted(GLOBAL.items()):
        kind = "enkel" if el.tag == f"{XS}simpleType" else "sammansatt"
        if kind == "enkel":
            _, base, patterns, _ = simple_signature(el)
            struct = f"xs:{base}" + (f", mönster `{patterns[0]}`" if patterns else "")
            struct = struct.replace("|", "\\|")
        else:
            struct = "<br/>".join(f"{n} : {t} [{lo}..{'*' if hi == 'unbounded' else hi}]" for n, t, lo, hi in complex_signature(el))
        rows.append(f"| [{name}](StructureDefinition-{name}.html) | {kind} | {fsh_str(doc_of(el)).replace(chr(92) + chr(34), chr(34))} | {struct} |")
    return "\n".join([
        "<!-- Genererad av scripts/rivta_datatypes.py — redigera inte för hand. -->",
        "# RIV-TA gemensamma datatyper", "",
        "Den här IG:n definierar de grunddatatyper som återkommer i RIV-TA-tjänstekontrakten, en gång, "
        "så att de logiska modellerna i varje TKB-IG kan referera till samma definition. Typerna följer "
        "[RIV-TA Best Practice: De facto-konventioner för datatyper](https://bitbucket.org/rivta-domains/best-practice/src/master/schema/) "
        "och har samma namn, element och kardinaliteter som i schemat. HSAIdType och UUIDType finns inte i "
        "de facto-konventionerna men definieras likadant i nästan alla domänscheman och är därför också med.", "",
        "## Hur TKB-IG:erna använder typerna", "",
        "De logiska modellerna i TKB-IG:erna följer tjänstekontraktets XML-schema: varje fält har samma namn, "
        "kardinalitet och typ som i schemat. När domänens schema definierar en typ med samma namn som här gäller:", "",
        "* **Identisk definition:** fältet refererar direkt till typen här.",
        "* **Samma element men snävare kardinalitet** (t.ex. `IIType.extension` 1..1 i stället för 0..1): domänens IG har en egen typ med samma namn som ärver typen här och skärper kardinaliteten.",
        "* **Annan definition:** domänens IG definierar typen själv, eftersom den inte är samma typ.", "",
        "Enkla typer (xs:simpleType, t.ex. TimeStampType) är profiler på FHIR-typen `string` med schemats mönster som invariant.", "",
        "## Typer", "",
        "| Typ | Slag | Beskrivning | Struktur |", "| :--- | :--- | :--- | :--- |", *rows, ""])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true")
    a = ap.parse_args()
    out = IG / "input" / "fsh"
    out.mkdir(parents=True, exist_ok=True)
    want = global_fsh()
    idx = IG / "input" / "pagecontent" / "index.md"
    idx.parent.mkdir(parents=True, exist_ok=True)
    if not idx.exists() or idx.read_text(encoding="utf-8") != index_md():
        if a.check:
            print(f"inaktuell: {idx}")
            sys.exit(1)
        idx.write_text(index_md(), encoding="utf-8")
    stale = [n for n, t in want.items() if not (out / n).exists() or (out / n).read_text(encoding="utf-8") != t]
    extra = [p.name for p in out.glob("*.fsh") if p.name not in want]
    if a.check:
        for n in stale + extra:
            print(f"inaktuell: {out / n}")
        sys.exit(1 if stale or extra else 0)
    for n in stale:
        (out / n).write_text(want[n], encoding="utf-8")
    for n in extra:
        (out / n).unlink()
    print(f"{len(want)} typer, {len(stale)} fil(er) skrivna, {len(extra)} borttagna")


if __name__ == "__main__":
    main()
