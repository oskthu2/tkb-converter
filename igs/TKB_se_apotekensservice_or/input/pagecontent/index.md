# se.apotekensservice: or — Ordinationer

<!-- tkb-version -->
**TKB-version:** 7.0 · **IG-version:** 7.0.0 · **Källa:** Bitbucket-tagg `7.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>ordination</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>E-hälsomyndigheten</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 7.0 · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/src/7.0">tagg 7.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/get/7.0.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **se: apotekensservice: or** version 7.0. Domänen förvaltas av eHälsomyndigheten (tidigare Apotekens Service AB) och innehåller tjänster för att hämta en patients aktuella respektive icke aktuella läkemedelsordinationer (recept och dosordinationer) med tillhörande information om artiklar, uttag, förskrivare och apotek.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) och dess dokument med arkitekturella beslut. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:se.apotekensservice:or`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Typ |
|----------|---------|-----|
| [HamtaAktuellaOrdinationer](7-tjanstekontrakt.html#hamtaaktuellaordinationer) | 5.2 | Fråga-svar |
| [HamtaIckeAktuellaOrdinationer](7-tjanstekontrakt.html#hamtaickeaktuellaordinationer) | 6.2 | Fråga-svar |

**Källa:** Bitbucket `rivta-domains/riv.se.apotekensservice.or`, tagg `7.0` (commit `242eca0ad25a`, 2019-12-05), samma commit som `master`.

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>6.0</td><td>AB</td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_or/6.0/ServiceContracts_se_apotekensservice_or_6.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/src/6.0">källkod</a></td></tr>
<tr><td>5.0</td><td>AB</td><td></td><td><a href="http://rivta.se/downloads//se_apotekensservice_or/5.0/ServiceContracts_se.apotekensservice_or_5.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/src/5.0">källkod</a></td></tr>
<tr><td>4.0_RC3</td><td>AB</td><td></td><td><a href="http://rivta.se/downloads/se_apotekensservice_or/4.0_RC3/ServiceContracts_se_apotekensservice_or_4.0_RC3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/src/TD_APOTEKENSSERVICE_OR_4_0_RC3">källkod</a></td></tr>
<tr><td>trunk</td><td>AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.se.apotekensservice.or/src/master">källkod</a></td></tr>
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
