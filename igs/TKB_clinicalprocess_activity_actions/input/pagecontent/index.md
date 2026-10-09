# clinicalprocess: activity: actions

<!-- tkb-version -->
**TKB-version:** 1.3.4 · **IG-version:** 1.3.4 · **Källa:** Bitbucket-commit `abc18c8b1767`, efter taggen `1.3.4`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän hanterar information gällande vårdaktiviteter kopplade till en patient, till exempel operationer och undersökningar.</td></tr>
<tr><th>Svenskt kortnamn</th><td>aktivitetshantering</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera aktiviteter:aktiviteter</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Tjänstekontraktsförvaltningen, TK-forvaltningen@inera.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.actions/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.actions/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://inera.atlassian.net/wiki/spaces/OITOF/pages/272835781/clinicalprocess+activity+actions+aktivitetshantering">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.3.4 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.actions/src/1.3.4">tagg 1.3.4</a> · <a href="https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.clinicalprocess.activity.actions/src/master/%20(no%20zip%20downloads;%20sourced%20via%20Bitbucket%20src%20API)">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: activity: actions** version 1.3.4.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar information gällande vårdaktiviteter kopplade till en patient, till exempel operationer och undersökningar. Syftet med domänen är att tillgängliggöra journalförd strukturerad information om aktiviteter i kärnprocessen på ett strukturerat sätt.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetActivities](7-tjanstekontrakt.html#getactivities) | 1.3 | Returnerar strukturerade aktiviteter för en patient, t.ex. operationer och undersökningar |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.6</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//clinicalprocess_activity_actions/1.0.6/VIS_granskning%20-%20clinicalprocess_activity_actions_1.0.6.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_activity_actions/1.0.6/T-granskning_clinicalprocess.activity.actions_1.0.6.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_activity_actions/1.0.6/VIS_granskning%20-%20clinicalprocess_activity_actions_1.0.6.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_activity_actions/1.0.6/ServiceContracts_clinicalprocess_activity_actions_1.0.6.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.actions/src/1.0.6">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.actions/src/master">källkod</a></td></tr>
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
