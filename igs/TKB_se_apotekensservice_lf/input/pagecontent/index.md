# se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem

## Översikt

FHIR Implementation Guide för tjänstedomänen **se: apotekensservice: lf** version 7.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och innehåller tjänster för vårdsystem att läsa en patients läkemedelsförteckning samt registrera, kontrollera och återkalla patientens samtycke till sådan åtkomst.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:lf`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Typ |
|----------|---------|-----|
| [AterkallaSamtyckeVardsystem](7-tjanstekontrakt.html#aterkallasamtyckevardsystem) | 1.0 | Fråga-svar |
| [KontrolleraSamtyckeVardsystem](7-tjanstekontrakt.html#kontrollerasamtyckevardsystem) | 1.0 | Fråga-svar |
| [LasLFVardsystem](7-tjanstekontrakt.html#laslfvardsystem) | 4.1 | Fråga-svar |
| [RegistreraSamtyckeVardsystem](7-tjanstekontrakt.html#registrerasamtyckevardsystem) | 1.0 | Uppdatering (tomt svar) |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.lf`, tagg `7.0_RC1` (commit `93e163ae44d5`, 2020-02-11), samma commit som `master`. Det finns ingen fastställd 7.0-tagg; senaste fastställda är `5.0` (2017-01-26).

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
