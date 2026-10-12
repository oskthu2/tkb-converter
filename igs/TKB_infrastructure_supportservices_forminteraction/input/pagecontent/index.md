# infrastructure: supportservices: forminteraction

<!-- tkb-version -->
**TKB-version:** 2.0.0 · **IG-version:** 2.0.0-snapshot · **Källa:** Bitbucket-commit `b8c52fec96db` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänen omfattar tjänstekontrakt för att stödja formulärinteraktion mellan mellan patient (e-tjänst i form av en tjänstekonsument) och verksamhetssystem (formulärmotor i form av en tjänsteproducent). Denna tjänstedomän utvecklas inte längre och har ersatts av domänen infrastructure:eservicesupply:forminteraction</td></tr>
<tr><th>Svenskt kortnamn</th><td>formulärhantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:stödtjänster:formulärhantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.supportservices.forminteraction/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.supportservices.forminteraction/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0.0 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.supportservices.forminteraction/src/b8c52fec96db668f36ddf647e8843dde8cd7c40c">commit b8c52fec96db</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: supportservices: forminteraction** version 2.0.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) `TKB_infrastructure_eservicesupply_forminteraction.docx`.

Domänen innehåller tjänstekontrakt för att stödja formulärinteraktion mellan patient (e-tjänst i form av en tjänstekonsument) och verksamhetssystem (formulärmotor i form av en tjänsteproducent). Formulärtjänsten möjliggör hantering av formulärinformation mellan olika aktörer.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetFormTemplates](7-tjanstekontrakt.html#getformtemplates) | 2.0 | Hämta lista med formulärmallar |
| [CreateForm](7-tjanstekontrakt.html#createform) | 2.0 | Skapa ett formulär |
| [GetForms](7-tjanstekontrakt.html#getforms) | 2.0 | Hämta lista med formulär |
| [GetForm](7-tjanstekontrakt.html#getform) | 2.0 | Hämta ett specifikt formulär |
| [GetFormQuestionPage](7-tjanstekontrakt.html#getformquestionpage) | 2.0 | Hämta en frågesida i ett formulär |
| [SaveFormPage](7-tjanstekontrakt.html#saveformpage) | 2.0 | Spara en frågesida i ett formulär |
| [SaveForm](7-tjanstekontrakt.html#saveform) | 2.0 | Avsluta och spara ett formulär |
| [CancelForm](7-tjanstekontrakt.html#cancelform) | 2.0 | Avbryta ett formulär |
| [CreateFormRequest](7-tjanstekontrakt.html#createformrequest) | 2.0 | Skapa en formulärbegäran |
| [GetFormTemplate](7-tjanstekontrakt.html#getformtemplate) | 2.0 | Hämta en specifik formulärmall |
| [SaveFormTemplate](7-tjanstekontrakt.html#saveformtemplate) | 2.0 | Spara en formulärmall |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/infrastructure_supportservices_forminteraction/1.0/infrastructure_supportservices_forminteractions_1.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.supportservices.forminteraction/src/TD_FORMINTERACTIONS_1_0_R">källkod</a></td></tr>
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
* [6 Tjänster sammanställning](6-tjanster-sammanstallning.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
