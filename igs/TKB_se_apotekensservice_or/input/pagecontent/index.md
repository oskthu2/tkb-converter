# se.apotekensservice: or — Ordinationer

## Översikt

FHIR Implementation Guide för tjänstedomänen **se: apotekensservice: or** version 7.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och innehåller tjänster för att hämta en patients aktuella respektive icke aktuella läkemedelsordinationer (recept och dosordinationer) med tillhörande information om artiklar, uttag, förskrivare och apotek.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:or`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Typ |
|----------|---------|-----|
| [HamtaAktuellaOrdinationer](7-tjanstekontrakt.html#hamtaaktuellaordinationer) | 5.2 | Fråga-svar |
| [HamtaIckeAktuellaOrdinationer](7-tjanstekontrakt.html#hamtaickeaktuellaordinationer) | 6.2 | Fråga-svar |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.or`, tagg `7.0` (commit `242eca0ad25a`, 2019-12-05), samma commit som `master`.

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
