#!/usr/bin/env python3
"""Skriv sidorna index och 1–7 för en IG som saknar TKB, utifrån utdata från xsd_to_ig.py.

    scripts/xsd_ig_pages.py <ig-katalog> <domän-config.json>

Konfigurationen (JSON) innehåller:
  domain, title, namespace, source (text om källan), summary (en mening om domänen),
  versions: [[domänversion, datum, kontrakt, kommentar], ...],
  ab_markdown: sökväg till AB-avsnittet (Markdown) eller null,
  ab_file: AB-dokumentets filnamn i input/images/ eller null,
  abbreviations: [[förkortning, betydelse], ...] (tolkade, se ASSUME i QUESTIONS.md)

Sidorna märks *SAKNAS I KÄLLDOKUMENT* där en TKB skulle ha stått som källa.
Källfiler listas ur input/images/.
"""
import json
import sys
from pathlib import Path

MISSING = "*SAKNAS I KÄLLDOKUMENT.*"


def main():
    ig, cfg = Path(sys.argv[1]), json.load(open(sys.argv[2]))
    contracts = json.load(open(ig / "xsd-generated/contracts.json"))
    pc = ig / "input/pagecontent"
    pc.mkdir(parents=True, exist_ok=True)
    images = sorted(p.name for p in (ig / "input/images").iterdir())
    dom = cfg["domain"]
    ab = cfg.get("ab_file")

    def w(name, lines):
        (pc / name).write_text("\n".join(lines).rstrip() + "\n")

    def wsdl_meta(c):
        meta = {}
        for line in c["wsdl_doc"].splitlines():
            if ":" in line:
                k, v = line.split(":", 1)
                meta[k.strip()] = v.strip()
        return meta

    first = wsdl_meta(contracts[0]) if contracts else {}
    rows = [f"| [{c['id']}](7-tjanstekontrakt.html#{c['id'].lower()}) | {c['version']} | "
            f"{'Fråga-svar' if c['has_response_model'] else 'Uppdatering (tomt svar)'} |" for c in contracts]

    w("index.md", [
        f"# {cfg['title']}", "", "## Översikt", "",
        f"FHIR Implementation Guide för tjänstedomänen **{dom.replace('.', ': ', 1).replace('.', ': ')}** version {cfg['version']}. {cfg['summary']}", "",
        "**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL)"
        + (" och dess dokument med arkitekturella beslut" if ab else "") + ". Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.", "",
        f"RIV-TA namnrymd: `{cfg['namespace']}`", "",
        "Domänen innehåller följande tjänstekontrakt:", "",
        "| Kontrakt | Version | Typ |", "|----------|---------|-----|", *rows, "",
        f"**Källa:** {cfg['source']}", "",
        "## Innehåll", "",
        "* [1 Inledning](1-inledning.html)", "* [2 Versionsinformation](2-versionsinformation.html)",
        "* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)",
        "* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)",
        "* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)",
        "* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)",
        "* [7 Tjänstekontrakt](7-tjanstekontrakt.html)", "* [Artefakter](artifacts.html)"])

    p1 = ["## Inledning", "",
          f"{MISSING} Domänen har ingen tjänstekontraktsbeskrivning. Uppgifterna nedan är hämtade ur WSDL-filernas annoteringar"
          + (" och domänens arkitekturella beslut." if ab else "."), "",
          cfg["summary"], "", "| Egenskap | Värde |", "| :--- | :--- |"]
    for k in ("Tjänstedomän", "Tjänsteinteraktionstyp", "RIV Teknisk Anvisning", "Förvaltning"):
        if k in first:
            p1.append(f"| {k} | {first[k]} |")
    p1 += ["", "### Referenser", "", "| Namn | Dokument | Kommentar |", "| :--- | :--- | :--- |"]
    if ab:
        p1 += [f"| AB | [{ab}]({ab}) | Arkitekturella beslut för domänen, se [avsnitt 3](3-tjanstedomanens-arkitektur.html) |",
               "| RIV TA Domänschema 2.1 | ARK_0006 | Refereras i AB-2.2 |",
               "| RIV TA Tjänsteschema 2.1 | ARK_0005 | Refereras i AB-2.2 |"]
    else:
        p1 += ["| | | Inga referenser i källan |"]
    if cfg.get("abbreviations"):
        p1 += ["", "### Förkortningar", "",
               "Förkortningarna förekommer i schemaannoteringarna. Förklaringarna finns inte i källan; de är tolkade (se QUESTIONS.md).", "",
               "| Förkortning | Betydelse |", "| :--- | :--- |"] + [f"| {a} | {b} |" for a, b in cfg["abbreviations"]]
    w("1-inledning.md", p1)

    p2 = ["## Versionsinformation", "",
          f"{MISSING} Det finns ingen TKB med revisionshistorik. Tabellen nedan är sammanställd ur repots taggar och WSDL-filernas revisionsuppgifter.", "",
          "| Domänversion | Datum | Tjänstekontrakt | Kommentar |", "| :--- | :--- | :--- | :--- |"]
    p2 += [f"| {' | '.join(r)} |" for r in cfg["versions"]]
    p2 += ["", "### Revisioner per tjänstekontrakt (ur WSDL)", "", "| Kontrakt | Revisioner |", "| :--- | :--- |"]
    for c in contracts:
        revs = [l.strip() for l in c["wsdl_doc"].splitlines()]
        out, grab = [], False
        for l in revs:
            if l.startswith("Revisioner:"):
                grab, l = True, l.split(":", 1)[1].strip()
            elif ":" in l and grab:
                break
            if grab and l:
                out.append(l)
        p2.append(f"| {c['id']} | {'; '.join(out) or '-'} |")
    if ab:
        p2 += ["", "### Revisionshistorik för dokumentet Arkitekturella beslut", "",
               "| Revision | Datum | Kommentar | Ändrat av |", "| :--- | :--- | :--- | :--- |",
               "| PA1 | 2017-01-19 | Första version | Arvid Thunholm, Inera |"]
    w("2-versionsinformation.md", p2)

    p3 = ["## Tjänstedomänens arkitektur", "",
          f"{MISSING} Det finns ingen TKB som beskriver domänens arkitektur. Enligt WSDL-filerna adresseras anropen med SOAP-huvudet `LogicalAddress` "
          "och anroparen identifieras med SOAP-huvudet `ArgosHeader` (se [avsnitt 7](7-tjanstekontrakt.html))."]
    if cfg.get("ab_markdown"):
        p3 += ["", Path(cfg["ab_markdown"]).read_text().rstrip()]
    w("3-tjanstedomanens-arkitektur.md", p3)

    w("4-tjanstedomanens-krav-och-regler.md", [
        "## Tjänstedomänens krav och regler", "", f"{MISSING} Det finns ingen TKB som beskriver krav och regler. Det som framgår av schemana:", "",
        "### Felhantering", "",
        "Tjänsterna returnerar fel som SOAP-fel (wsdl:fault), inte som ett resultatfält i svaret. Två feltyper är definierade i domänschemana:", "",
        "| Fel | Beskrivning | Fält |", "| :--- | :--- | :--- |",
        "| ApplicationException | Applikationsfel | `code` (1..1, string), `description` (0..1, string) |",
        "| SystemException | Systemfel | `code` (1..1, string) |", "",
        "Felkoderna finns inte dokumenterade i källan.", "",
        "### Utökningar", "",
        "Begärande- och svarstyperna har utökningspunkter (`xs:any` eller ett valfritt element `extension` av typen ExtensionType). Utökningspunkterna är inte med i de logiska modellerna.", "",
        "### Villkor i schemaannoteringarna", "",
        "Villkor mellan fält (t.ex. att ett fält är obligatoriskt när ett annat är satt) står bara i fältbeskrivningarna i [avsnitt 7](7-tjanstekontrakt.html) och är inte uttryckta som invarianter."])

    p5 = ["## Tjänstedomänens meddelandemodeller", "",
          f"{MISSING} Det finns ingen informationsmodell för domänen. Meddelandemodellen framgår av scheman och de logiska modellerna:", "",
          "| Kontrakt | Begäran | Svar |", "| :--- | :--- | :--- |"]
    for c in contracts:
        cid = c["id"].lower()
        res = f"[{c['id']}](StructureDefinition-{cid}.html)" if c["has_response_model"] else "tomt"
        p5.append(f"| {c['id']} | [{c['id']}Request](StructureDefinition-{cid}-request.html) | {res} |")
    p5 += ["", "De gemensamma typer som meddelandena byggs av beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html)."]
    w("5-tjanstedomanens-meddelandemodeller.md", p5)

    w("6-gemensamma-informationskomponenter.md", [
        "## Gemensamma informationskomponenter", "",
        f"{MISSING} Komponenterna nedan är de typer ur domänschemana som används av tjänstekontrakten. Beskrivningarna är schemaannoteringarna. "
        "Flera typer finns i mer än en version av domänschemat; versionen anges då inom parentes.", "",
        (ig / "xsd-generated/types.md").read_text().rstrip()])

    p7 = ["## Tjänstekontrakt", "",
          f"{MISSING} Det finns inga kontraktsbeskrivningar. Beskrivningarna nedan är hämtade ur WSDL och XSD. "
          "Alla kontrakt har SOAP-huvudena LogicalAddress och ArgosHeader och returnerar fel som `ApplicationException` eller `SystemException` "
          "(se [avsnitt 4](4-tjanstedomanens-krav-och-regler.html)). ArgosHeaderType har följande fält, alla string och 0..1: forskrivarkod, legitimationskod, "
          "fornamn, efternamn, yrkesgrupp, befattningskod, arbetsplatskod, arbetsplatsnamn, postort, postadress, postnummer, telefonnummer, requestId, "
          "rollnamn, hsaID, katalog, organisationsnummer, systemnamn, systemversion, systemIp. Enligt WSDL-filerna anger dokumentationen vilka ArgosHeader-fält som är obligatoriska för respektive tjänsteinteraktion; den dokumentationen finns inte i källan."]
    for c in contracts:
        cid = c["id"].lower()
        m = wsdl_meta(c)
        p7 += ["", f"### {c['id']}", "", "#### Version", "", c["version"], "",
               "| Egenskap | Värde |", "| :--- | :--- |",
               f"| Namnrymd (tjänsteschema) | `{c['responder_ns']}` |",
               f"| Namnrymd (WSDL) | `{c['wsdl_ns']}` |",
               f"| SOAP-action | `{c['soap_action']}` |",
               f"| Interaktionstyp | {m.get('Tjänsteinteraktionstyp', '-')} |", "",
               "#### Fältregler", "", (ig / f"xsd-generated/{c['id']}.md").read_text().rstrip(), "",
               "#### FHIR-artefakter", "",
               f"* [{c['id']}Request](StructureDefinition-{cid}-request.html): logisk modell för begäran, inklusive SOAP-huvudena"]
        if c["has_response_model"]:
            p7.append(f"* [{c['id']}](StructureDefinition-{cid}.html): logisk modell för svaret")
        src = [f for f in images if f.startswith(c["id"] + "Interaction") or f.startswith(c["id"] + "Responder")]
        p7 += ["", "#### Källfiler", "", "| Fil | Beskrivning |", "| :--- | :--- |"]
        p7 += [f"| [{f}]({f}) | {'WSDL för tjänsteinteraktionen' if f.endswith('.wsdl') else 'Tjänsteschema'} |" for f in src]
    shared = [f for f in images if f.endswith(".xsd") and "Interaction" not in f and "Responder" not in f]
    p7 += ["", "### Gemensamma källfiler", "", "| Fil | Beskrivning |", "| :--- | :--- |"]
    p7 += [f"| [{f}]({f}) | {'SOAP-huvud' if f.startswith(('ArgosHeader', 'itintegration')) else 'Domänschema'} |" for f in shared]
    if ab:
        p7.append(f"| [{ab}]({ab}) | Arkitekturella beslut |")
    w("7-tjanstekontrakt.md", p7)
    print(f"[xsd_ig_pages] skrev index och sidor 1–7 i {pc}")


if __name__ == "__main__":
    main()
