# clinicalprocess: healthcond: actoutcome 3.1.10

<!-- tkb-version -->
**TKB-version:** 3.1.10 · **IG-version:** 3.1.10 · **Källa:** Bitbucket-tagg `3.1.10` · **Andra huvudversioner:** [4.2.2](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_actoutcome/index.html)
<!-- /tkb-version -->

> **Äldre huvudversion.** Detta är TKB 3.1.10 (Bitbucket-tagg `3.1.10`). Den senaste huvudversionen, 4.2, finns på [clinicalprocess: healthcond: actoutcome](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_actoutcome/index.html).

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän hanterar information gällande utfall av olika undersökningar och aktiviteter, till exempel laboratoriesvar och bilddiagnostik.</td></tr>
<tr><th>Svenskt kortnamn</th><td>utfall av aktiviteter</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera hälsorelaterade tillstånd:utfall av aktivitet</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Tjänstekontraktsförvaltningen, TK-forvaltningen@inera.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://inera.atlassian.net/wiki/spaces/OITOF/pages/22216799/clinicalprocess+healthcond+actoutcome+utfall+av+aktiviteter">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 3.1.10 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/3.1.10">tagg 3.1.10</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/get/3.1.10.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från Ineras tjänstekontraktsbeskrivning (TKB)
för tjänstedomänen **clinicalprocess: healthcond: actoutcome** version 3.1.10, släppt 2026-06-03
(Bitbucket-tagg `3.1.10`, commit `7c07a857587fbf8e4484f586d045d2c366a9ace6`).

Domänen hanterar information gällande utfall av olika undersökningar och aktiviteter,
till exempel laboratoriesvar och bilddiagnostik. Tjänstekontrakten är baserade på
RIVTA 2.1 och reglerade genom arkitekturella beslut.

Namespace-bas: `urn:riv:clinicalprocess:healthcond:actoutcome`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetReferralOutcome](7-tjanstekontrakt.html#getreferraloutcome) | 3.1 | Returnerar svar på en konsultationsremiss för en patient |
| [GetMaternityMedicalHistory](7-tjanstekontrakt.html#getmaternitymedicalhistory) | 2.0 | Returnerar mödravårdsjournal för en patient |
| [GetLaboratoryOrderOutcome](7-tjanstekontrakt.html#getlaboratoryorderoutcome) | 3.1 | Returnerar kemilaboratoriesvar för en patient |
| [GetImagingOutcome](7-tjanstekontrakt.html#getimagingoutcome) | 1.0 | Returnerar bilddiagnostiska resultat för en patient |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>4.0.1</td><td>TKB, AB, IS</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/4.0.1/VIS_granskning%20-%20clinicalprocess_healthcond_actoutcome_4.0.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/4.0.1/T-granskning%20-%20%20clinicalprocess_healthcond_actoutcome_4.0.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/4.0.1/VIS_granskning%20-%20clinicalprocess_healthcond_actoutcome_4.0.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/4.0.1/ServiceContracts_clinicalprocess_healthcond_actoutcome_4.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/4.0.1">källkod</a></td></tr>
<tr><td>3.1.8</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/3.1.8/VIS_granskning%20-%20clinicalprocess.healthcond.actoutcome%203.1.8.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/3.1.8/T_granskning%20-%20clinicalprocess.healthcond.actoutcome%203.1.8.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/3.1.8/VIS_granskning%20-%20clinicalprocess.healthcond.actoutcome%203.1.8.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/3.1.8/ServiceContracts_clinicalprocess_healthcond_actoutcome_3.1.8.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/3.1.8">källkod</a></td></tr>
<tr><td>2.0.5</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/2.0.5/T_granskning%20-%20clinicalprocess_healthcond_actoutcome_2.0.5.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/2.0.5/VIS_granskning%20-%20clinicalprocess_healthcond_actoutcome_2.0.5.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/2.0.5/VIS_granskning%20-%20clinicalprocess_healthcond_actoutcome_2.0.5.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_actoutcome/2.0.5/ServiceContracts_clinicalprocess_healthcond_actoutcome_2.0.5.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/2.0.5">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, IS, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/master">källkod</a></td></tr>
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
* [Artefakter](artifacts.html)
