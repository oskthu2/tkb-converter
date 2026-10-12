# clinicalprocess: healthcond: description

<!-- tkb-version -->
**TKB-version:** 3.0.6 · **IG-version:** 3.0.6 · **Källa:** Bitbucket-tagg `3.0.6` · **Andra huvudversioner:** [2.1.19](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_description/2.1.19/index.html)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän hantera information som beskriver patientens hälsotillstånd, till exempel vårdanteckningar, diagnoser, uppmärksamhetsinformation och funktionsstatus.</td></tr>
<tr><th>Svenskt kortnamn</th><td>tillståndsbeskrivning</td></tr>
<tr><th>Svenskt namn</th><td>vård och omsorg kärnprocess:hantera hälsorelaterade tillstånd:tillståndsbeskrivning</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Tjänstekontraktsförvaltningen, TK-forvaltningen@inera.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://inera.atlassian.net/wiki/spaces/OITOF/pages/268174569/clinicalprocess+healthcond+description+tillst+ndsbeskrivning">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 3.0.6 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/src/3.0.6">tagg 3.0.6</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/get/3.0.6.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från TKB-dokumentation
för tjänstedomänen **clinicalprocess: healthcond: description** version 3.0.6.

Tjänstekontrakten är baserade på RIVTA 2.1 och reglerade genom arkitekturella beslut.
Tjänstekontraktsbeskrivningen är en kravspecifikation som fungerar som ett teknikneutralt,
formellt regelverk som reglerar integrationskrav.

## Tjänstekontrakt i denna domän

| Kontrakt | Version | Beskrivning |
|---------|---------|-------------|
| [GetCareDocumentation](7-tjanstekontrakt.html#getcaredocumentation) | 3.0 | Returnerar journalanteckningar för en patient |
| [GetDiagnosis](7-tjanstekontrakt.html#getdiagnosis) | 2.0 | Returnerar registrerade diagnoser för en patient |
| [GetAlertInformation](7-tjanstekontrakt.html#getalertinformation) | 2.0 | Returnerar uppmärksamhetsinformation för en patient |
| [GetFunctionalStatus](7-tjanstekontrakt.html#getfunctionalstatus) | 2.0 | Returnerar dokumenterade bedömningar av funktionsnedsättningar |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.1.16</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_description/2.1.16/VIS_granskning%20-%20%20clinicalprocess_healthcond_description_2.1.16.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_description/2.1.16/T-granskning%20-%20%20clinicalprocess_healthcond_description_2.1.16.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_description/2.1.16/VIS_granskning%20-%20%20clinicalprocess_healthcond_description_2.1.16.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_description/2.1.16/ServiceContracts_clinicalprocess_healthcond_description_2.1.16.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/src/2.1.16">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/src/master">källkod</a></td></tr>
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
