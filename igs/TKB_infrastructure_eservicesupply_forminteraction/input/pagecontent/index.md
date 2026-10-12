# infrastructure: eservicesupply: forminteraction

<!-- tkb-version -->
**TKB-version:** 2.1.1 · **IG-version:** 2.1.1 · **Källa:** Bitbucket-tagg `2.1.1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Formulärtjänsten möjliggör hantering av formulärinformation mellan olika aktörer. Tjänstekontraktet möjliggör insamling av olika typer av formulärinformation. Tjänstekonsument och tjänsteproducent kan använda tjänstekontraktet på olika sätt och i olika steg i sina processer. Exempel: * En vårdaktivitet kräver en hälsodeklaration. * Ett vårdbesök föranleder en registreringsblankett * En behandling kräver uppföljning + Biverkningsregistrering + Effektmätning av behandling * Informationsinsamling under begäran och bedömning av vårdbegäran. Denna domän hette tidigare infrastructure:supportservices:forminteraction.</td></tr>
<tr><th>Svenskt kortnamn</th><td>formulärhantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:etjänsteförsörjning:formulärhantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/wiki/">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.1.1 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src/2.1.1">tagg 2.1.1</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: eservicesupply: forminteraction** version 2.1.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen definierar tjänstekontrakt för formulärinteraktion mellan patient/invånare och vårdverksamhet,
alternativt mellan patient-e-tjänst och verksamhetssystem. Tjänstedomänens tjänstekontrakt möjliggör
en vård-initierad process för formulärbegäran gentemot identifierad invånare eller patient.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetFormTemplates](7-tjanstekontrakt.html#getformtemplates) | 2.0 | Hämta tillgängliga formulärmallar för invånare |
| [CreateForm](7-tjanstekontrakt.html#createform) | 2.1 | Skapa och initiera/starta ett formulär |
| [GetForms](7-tjanstekontrakt.html#getforms) | 2.0 | Lista alla pågående/avslutade formulär |
| [GetForm](7-tjanstekontrakt.html#getform) | 2.1 | Hämta ett specifikt formulär |
| [GetFormQuestionPage](7-tjanstekontrakt.html#getformquestionpage) | 2.0 | Navigera framåt eller bakåt i ett formulär |
| [SaveFormPage](7-tjanstekontrakt.html#saveformpage) | 2.1 | Spara invånarens besvarade frågor |
| [SaveForm](7-tjanstekontrakt.html#saveform) | 2.1 | Avsluta/stänga ett ifyllt formulär |
| [CancelForm](7-tjanstekontrakt.html#cancelform) | 2.0 | Avbryta/radera ett formulär |
| [CreateFormRequest](7-tjanstekontrakt.html#createformrequest) | 2.0 | Skapa en begäran om formulär (formulärbegäran) |
| [GetFormTemplate](7-tjanstekontrakt.html#getformtemplate) | 2.1 | Hämta en formulärmall |
| [SaveFormTemplate](7-tjanstekontrakt.html#saveformtemplate) | 2.1 | Spara en formulärmall |
| [DeleteFormTemplate](7-tjanstekontrakt.html#deleteformtemplate) | 1.0 | Makulera en formulärmall |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/VIS_granskning_infrastructure_eservicesupply_forminteraction_2.0.docx">Arkitektur &amp; Regelverk: Säkerhet: Delvis Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/VIS_granskning_infrastructure_eservicesupply_forminteraction_2.0.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/T-granskning%20-%20infrastructure_eservicesupply_forminteraction_2.0.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_eservicesupply_forminteraction/2.0/ServiceContracts_infrastructure_eservicesupply_forminteraction_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src/2.0">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.forminteraction/src/master">källkod</a></td></tr>
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
