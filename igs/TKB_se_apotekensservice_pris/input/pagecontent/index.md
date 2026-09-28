# se.apotekensservice: pris — Pris och högkostnadsskydd

## Översikt

FHIR Implementation Guide för tjänstedomänen **se: apotekensservice: pris** version 2.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och innehåller tjänster för prisberäkning vid receptexpedition, kontroll av förmånskod, samt hantering av konton och transaktioner i högkostnadsdatabasen (HKDB), inklusive koppling av barns konton till vårdnadshavares.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:pris`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Typ |
|----------|---------|-----|
| [HamtaBarn](7-tjanstekontrakt.html#hamtabarn) | 1.0 | Fråga-svar |
| [HamtaHkdbKonto](7-tjanstekontrakt.html#hamtahkdbkonto) | 1.0 | Fråga-svar |
| [HamtaHkdbTransaktioner](7-tjanstekontrakt.html#hamtahkdbtransaktioner) | 1.0 | Fråga-svar |
| [HamtaHkdbTransaktionerWebb](7-tjanstekontrakt.html#hamtahkdbtransaktionerwebb) | 1.0 | Fråga-svar |
| [KontrolleraForman](7-tjanstekontrakt.html#kontrolleraforman) | 1.1 | Fråga-svar |
| [KopplaBarnKonto](7-tjanstekontrakt.html#kopplabarnkonto) | 4.0 | Fråga-svar |
| [Prisfraga](7-tjanstekontrakt.html#prisfraga) | 4.1 | Fråga-svar |
| [RegistreraHkdbTransaktion](7-tjanstekontrakt.html#registrerahkdbtransaktion) | 1.1 | Fråga-svar |
| [SkapaHkdbKonto](7-tjanstekontrakt.html#skapahkdbkonto) | 4.0 | Fråga-svar |
| [TaBortHkdbKonto](7-tjanstekontrakt.html#taborthkdbkonto) | 1.0 | Fråga-svar |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.pris`, tagg `2.0_RC1` (commit `1cd10e788bdd`, 2017-01-26), samma commit som `master`. Det finns ingen fastställd 2.0-tagg; senaste fastställda är `1.0.0` (2011-09-06).

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
