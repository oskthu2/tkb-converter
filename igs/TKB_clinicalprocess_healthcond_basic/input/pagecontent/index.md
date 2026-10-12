# clinicalprocess: healthcond: basic

<!-- tkb-version -->
**TKB-version:** 1.2.3 · **IG-version:** 1.2.3 · **Källa:** Bitbucket-tagg `1.2.3`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän hanterar information gällande observationer och mätvärden.</td></tr>
<tr><th>Svenskt kortnamn</th><td>basuppgifter tillstånd</td></tr>
<tr><th>Svenskt namn</th><td>Vård- och omsorg kärnprocess:hantera hälsorelaterade tillstånd:basuppgifter</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Tjänstekontraktsförvaltningen, TK-forvaltningen@inera.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://inera.atlassian.net/wiki/spaces/OITOF/pages/81396444/clinicalprocess+healthcond+basic+basuppgifter+tillst+nd">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.2.3 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic/src/1.2.3">tagg 1.2.3</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic/get/1.2.3.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: healthcond: basic** (Vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: basuppgifter), version 1.2.3.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) och schemafilerna i Bitbucket-taggen `1.2.3` (commit `55a953227545`, 2026-05-12). TKB-dokumentet i taggen har dokumentversion 1.2.1 (2025-07-07).

Domänen hanterar information om observationer och mätvärden. Syftet är att tillgängliggöra journalförd, strukturerad och kodad information om observationer från vårdverksamheter för återanvändning, till exempel i kvalitetsregister, uppföljningssystem, system för den enskildes direktåtkomst och sammanhållen journalföring.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetObservations](7-tjanstekontrakt.html#getobservations) | 1.2 | Returnerar strukturerade observationer för en patient. Den praktiska tillämpningen beskrivs i interaktionsöverenskommelser. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.10</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_basic/1.0.10/VIS_granskning%20-%20clinicalprocess_healthcond_basic_1.0.10.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_basic/1.0.10/T-granskning%20-%20clinicalprocess_healthcond_basic_1.0.10.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_basic/1.0.10/VIS_granskning%20-%20clinicalprocess_healthcond_basic_1.0.10.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_basic/1.0.10/ServiceContracts_clinicalprocess_healthcond_basic_1.0.10.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic/src/1.0.10">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, IS, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.basic/src/master">källkod</a></td></tr>
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
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)

TKB-dokumentet saknar ett kapitel för gemensamma informationskomponenter; tjänstekontraktet är kapitel 6 i dokumentet och kapitel 7 i denna IG.
