# se.apotekensservice: axs — Hämta patientinformation

## Översikt

FHIR Implementation Guide för tjänstedomänen **se.apotekensservice: axs** version 7.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och tjänsteväxlas i NTjP.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält och koder är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:axs`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [HamtaPatientInfo](7-tjanstekontrakt.html#hamtapatientinfo) | 6.0 | Hämtar patientinformation: eventuellt dosapotek, dosproducent, dosunderlagets status, om det finns aktuella recept samt folkbokförings- och samtyckesinformation |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.axs`, tagg `7.0` (commit `a8817d521c66`, 2019-12-05).

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
