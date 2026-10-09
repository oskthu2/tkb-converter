# se.apotekensservice: expo — Expeditionsställen och dosmottagare

<!-- tkb-version -->
**TKB-version:** 2.0_RC1 · **IG-version:** 2.0.0-rc1 · **Källa:** Bitbucket-tagg `2.0_RC1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>expeditionsställe</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>E-hälsomyndigheten</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/src/2.0_RC1">tagg 2.0_RC1</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/get/9aabc1797ea7.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

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

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0_RC1</td><td>AB</td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_expo/2.0_RC1/ServiceContracts_se_apotekensservice_expo_2.0_RC1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/src/2.0_RC1">källkod</a></td></tr>
<tr><td>1.0_beta_r588</td><td></td><td></td><td><a href="http://rivta.se/downloads/se_apotekensservice_expo/1.0-beta-r588/ServiceContracts_se.apotekensservice_expo_1.0-beta-r588.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/src/1.0-beta-r588">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.expo/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
