# se.apotekensservice: axs — Hämta patientinformation

<!-- tkb-version -->
**TKB-version:** 7.0 · **IG-version:** 7.0.0 · **Källa:** Bitbucket-tagg `7.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>E-hälsomyndigheten</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 7.0 · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/src/7.0">tagg 7.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/get/7.0.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **se.apotekensservice: axs** version 7.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och tjänsteväxlas i NTjP.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält och koder är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:axs`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [HamtaPatientInfo](7-tjanstekontrakt.html#hamtapatientinfo) | 6.0 | Hämtar patientinformation: eventuellt dosapotek, dosproducent, dosunderlagets status, om det finns aktuella recept samt folkbokförings- och samtyckesinformation |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.axs`, tagg `7.0` (commit `a8817d521c66`, 2019-12-05).

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>6.0</td><td>AB</td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_axs/6.0/ServiceContracts_se_apotekensservice_axs_6.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/src/6.0">källkod</a></td></tr>
<tr><td>5.0</td><td></td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_axs/5.0/ServiceContracts_se.apotekensservice_axs_5.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/src/5.0">källkod</a></td></tr>
<tr><td>4.0_RC1</td><td></td><td></td><td><a href="http://rivta.se/downloads/se_apotekensservice_axs/4.0_RC1/ServiceContracts_se_apotekensservice_axs_4.0_RC1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/src/TD_SE_APOTEKENSSERVICE_AXS_4_0_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.axs/src/master">källkod</a></td></tr>
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
