# clinicalprocess: healthcond: description 2.1

<!-- tkb-version -->
**TKB-version:** 2.1.19 · **IG-version:** 2.1.19 · **Källa:** Bitbucket-tagg `2.1.19` · **Andra huvudversioner:** [3.0.6](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_description/index.html)
<!-- /tkb-version -->

<div class="alert alert-warning" role="alert" markdown="1">
**Äldre huvudversion.** Detta är TKB 2.1 (Bitbucket-taggen 2.1.19, dokumentversion 2.1.18). Den senaste huvudversionen, 3.0, finns på [clinicalprocess: healthcond: description](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_description/index.html).
</div>

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
<tr><th>Underlag för denna IG</th><td>Version 2.1.19 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/src/2.1.19">tagg 2.1.19</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.description/get/2.1.19.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: healthcond: description** version 2.1.19.
Genererad från Ineras tjänstekontraktsbeskrivning (TKB) i Bitbucket-taggen `2.1.19`. Själva TKB-dokumentet i taggen är märkt version 2.1.18 (ARK_0015, 2023-02-03): taggen 2.1.19 skiljer sig från taggen 2.1.18 bara i testsviterna och i självdeklarationerna SjD_TP för GetAlertInformation och GetCareDocumentation, så TKB-texten och scheman är desamma som i 2.1.18.

Domänen hanterar information som beskriver patientens hälsotillstånd, till exempel vårdanteckningar, diagnoser, uppmärksamhetsinformation och funktionsstatus. Tjänstekontrakten är baserade på RIVTA 2.1 och reglerade genom arkitekturella beslut. Tjänstekontraktsbeskrivningen är en kravspecifikation som fungerar som ett teknikneutralt, formellt regelverk för tjänstekonsumenter och tjänsteproducenter.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning | Logiska modeller |
|----------|---------|-------------|------------------|
| [GetCareDocumentation](7-tjanstekontrakt.html#getcaredocumentation) | 2.1 | Returnerar hälso- och sjukvårdsdokument (journalanteckningar) för en patient | [Svar](StructureDefinition-getcaredocumentation.html), [begäran](StructureDefinition-getcaredocumentation-request.html) |
| [GetDiagnosis](7-tjanstekontrakt.html#getdiagnosis) | 2.0 | Returnerar registrerade diagnoser för en patient | [Svar](StructureDefinition-getdiagnosis.html), [begäran](StructureDefinition-getdiagnosis-request.html) |
| [GetAlertInformation](7-tjanstekontrakt.html#getalertinformation) | 2.0 | Returnerar uppmärksamhetsinformation för en patient | [Svar](StructureDefinition-getalertinformation.html), [begäran](StructureDefinition-getalertinformation-request.html) |
| [GetFunctionalStatus](7-tjanstekontrakt.html#getfunctionalstatus) | 2.0 | Returnerar dokumenterade bedömningar av funktionsnedsättningar och/eller aktivitetsförmåga | [Svar](StructureDefinition-getfunctionalstatus.html), [begäran](StructureDefinition-getfunctionalstatus-request.html) |

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
* [5 Gemensamma informationskomponenter](5-gemensamma-informationskomponenter.html)
* [6 Tjänstedomänens meddelandemodeller](6-tjanstedomanens-meddelandemodeller.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Bilaga Mappningar](8-bilaga-mappningar.html)
* [Artefakter](artifacts.html)
