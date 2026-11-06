# clinicalprocess: healthcond: actoutcome

<!-- tkb-version -->
**TKB-version:** 4.2.2 · **IG-version:** 4.2.2 · **Källa:** Bitbucket-tagg `4.2.2` · **Andra huvudversioner:** [3.1.10](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_actoutcome/3.1.10/index.html)
<!-- /tkb-version -->

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
<tr><th>Underlag för denna IG</th><td>Version 4.2.2 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/4.2.2">tagg 4.2.2</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/get/4.2.2.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från TKB-dokumentation
för tjänstedomänen **clinicalprocess: healthcond: actoutcome** version 4.2.2.

Domänen hanterar information gällande utfall av olika undersökningar och aktiviteter,
till exempel laboratoriesvar och bilddiagnostik. Tjänstekontrakten är baserade på
RIVTA 2.1 och reglerade genom arkitekturella beslut.

Namespace-bas: `urn:riv:clinicalprocess:healthcond:actoutcome`

## Tjänstekontrakt i denna domän

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetLaboratoryOrderOutcome](7-tjanstekontrakt.html#getlaboratoryorderoutcome) | 4.2 | Returnerar multidisciplinära laboratoriesvar för en patient |
| [GetReferralOutcome](7-tjanstekontrakt.html#getreferraloutcome) | 3.2 | Returnerar svar på konsultationsremiss och begäran om övertagande av vårdansvar |
| [GetMaternityMedicalHistory](7-tjanstekontrakt.html#getmaternitymedicalhistory) | 2.0 | Returnerar mödravårdsjournal för en patient |
| [GetImagingOutcome](7-tjanstekontrakt.html#getimagingoutcome) | 1.0 | Returnerar bilddiagnostiska resultat för en patient |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>4.0.1</td><td>TKB, AB, IS</td><td>Arkitektur &amp; Regelverk: Säkerhet: Godkänd<br/>Arkitektur &amp; Regelverk: Teknik: Godkänd<br/>Arkitektur &amp; Regelverk: Informatik: Godkänd</td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/get/4.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/4.0.1">källkod</a></td></tr>
<tr><td>3.1.8</td><td>TKB, AB</td><td>Arkitektur &amp; Regelverk: Informatik: Godkänd<br/>Arkitektur &amp; Regelverk: Teknik: Godkänd<br/>Arkitektur &amp; Regelverk: Säkerhet: Godkänd</td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/get/3.1.8.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/3.1.8">källkod</a></td></tr>
<tr><td>2.0.5</td><td>TKB, AB</td><td>Arkitektur &amp; Regelverk: Teknik: Godkänd<br/>Arkitektur &amp; Regelverk: Säkerhet: Godkänd<br/>Arkitektur &amp; Regelverk: Informatik: Godkänd</td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/get/2.0.5.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/2.0.5">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, IS, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.actoutcome/src/master">källkod</a></td></tr>
</tbody>
</table>
<p><i>Zip-arkiven hämtas från taggarna på Bitbucket. Granskningsprotokollen publicerades på rivta.se och länkas inte härifrån.</i></p>

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
