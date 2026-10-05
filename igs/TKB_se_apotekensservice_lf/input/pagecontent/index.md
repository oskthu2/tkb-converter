# se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem

<!-- tkb-version -->
**TKB-version:** 7.0_RC1 · **IG-version:** 7.0.0-rc1 · **Källa:** Bitbucket-tagg `7.0_RC1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>läkemedelsförteckning</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>E-hälsomyndigheten</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 7.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/src/7.0_RC1">tagg 7.0_RC1</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/get/7.0_RC1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

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

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>5.0</td><td>AB</td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_lf/5.0/ServiceContracts_se_apotekensservice_lf_5.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/src/5.0">källkod</a></td></tr>
<tr><td>4.0</td><td></td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_lf/4.0/ServiceContracts_se.apotekensservice_lf_4.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/src/4.0">källkod</a></td></tr>
<tr><td>1.0.0</td><td></td><td></td><td><a href="http://rivta.se/downloads/se_apotekensservice_lf/1.0.0/ServiceContracts_se.apotekensservice_lf_1.0.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/src/TD_APSE_LF_1_0_0_R">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.lf/src/master">källkod</a></td></tr>
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
