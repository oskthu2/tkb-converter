# se.apotekensservice: expo — Expeditionsställen och dosmottagare

## Översikt

FHIR Implementation Guide för tjänstedomänen **se: apotekensservice: expo** version 2.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och innehåller tjänster för att hämta och uppdatera information om expeditionsställen (apotek), aktörers kontaktuppgifter och dosmottagare.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:expo`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Typ |
|----------|---------|-----|
| [HamtaApoteksInfo](7-tjanstekontrakt.html#hamtaapoteksinfo) | 1.0 | Fråga-svar |
| [HamtaApoteksinfoEget](7-tjanstekontrakt.html#hamtaapoteksinfoeget) | 5.0 | Fråga-svar |
| [KontaktuppgifterHamta](7-tjanstekontrakt.html#kontaktuppgifterhamta) | 4.0 | Fråga-svar |
| [KontaktuppgifterUppdatera](7-tjanstekontrakt.html#kontaktuppgifteruppdatera) | 5.0 | Uppdatering (tomt svar) |
| [SkapaApotek](7-tjanstekontrakt.html#skapaapotek) | 6.0 | Fråga-svar |
| [SkapaDosmottagare](7-tjanstekontrakt.html#skapadosmottagare) | 4.0 | Fråga-svar |
| [SokDosmottagare](7-tjanstekontrakt.html#sokdosmottagare) | 1.0 | Fråga-svar |
| [TaBortDosmottagare](7-tjanstekontrakt.html#tabortdosmottagare) | 1.0 | Uppdatering (tomt svar) |
| [UppdateraDosmottagare](7-tjanstekontrakt.html#uppdateradosmottagare) | 4.0 | Uppdatering (tomt svar) |
| [UppdateraExpoMedApotek](7-tjanstekontrakt.html#uppdateraexpomedapotek) | 6.0 | Fråga-svar |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.expo`, commit `9aabc1797ea7` på `master` (2017-01-26), samma commit som taggen `2.0_RC1`. Repot har ingen fastställd 2.0-tagg.

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
