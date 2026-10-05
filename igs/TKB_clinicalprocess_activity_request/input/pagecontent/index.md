# clinicalprocess: activity: request — Remisshantering

<!-- tkb-version -->
**TKB-version:** 2.2 · **IG-version:** 2.2.0 · **Källa:** Bitbucket-tagg `2.2`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med domänen är att hantera remissprocessen nationellt och lokalt, mellan och inom vårdgivare, från remiss till svar. Domänen innehåller specifikationer för att skicka och ta emot remisser, bekräftelser och svar samt tjänster för att leverera statusinformation för remisser.</td></tr>
<tr><th>Svenskt kortnamn</th><td>remisshantering</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera aktiviteter:remisshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.2 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/2.2">tagg 2.2</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/get/2.2.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: activity: request** ("Remisshantering") version 2.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller tjänster för att hantera remissprocessen nationellt och lokalt, mellan och inom vårdgivare, från remiss till svar. I denna domänversion avser remiss en så kallad allmänremiss.

RIV-TA namnrymd: `urn:riv:clinicalprocess:activity:request`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessRequest](7-tjanstekontrakt.html#processrequest) | 2.2 | Skickar en remiss från remittent till remissmottagare |
| [ProcessRequestConfirmation](7-tjanstekontrakt.html#processrequestconfirmation) | 2.2 | Skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten |
| [ProcessRequestOutcome](7-tjanstekontrakt.html#processrequestoutcome) | 2.2 | Skickar delsvar, preliminärt svar eller slutsvar till remittenten |

Alla tre kontrakten skickar information (push). Den logiska modellen för respektive kontrakt beskriver därför begäran, och svaret beskrivs av den gemensamma modellen [ProcessResult](StructureDefinition-process-result.html).

**Källa:** TKB-dokumentet (`TKB_clinicalprocess_activity_request.docx`, version 2.2 fastställd 2026-04-22) från Bitbucket `rivta-domains/riv.clinicalprocess.activity.request`, tagg `2.2`. Brödtexten i avsnitt 2 och 7 anger fortfarande version 2.1; revisionshistoriken och scheman anger 2.2.

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.2</td><td>TKB, AB, IS</td><td><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/VIS_granskning%20-%20clinicalprocess_activity_request_1.0.2.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/VIS_granskning%20-%20clinicalprocess_activity_request_1.0.2.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/T-granskning%20-%20clinicalprocess_activity_request_1.0.2%20(1).docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.2/ServiceContracts_clinicalprocess_activity_request_1.0.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/1.0.2">källkod</a></td></tr>
<tr><td>1.0.1</td><td>TKB, IS, AB</td><td><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/T-granskning%20-clinicalprocess_activity_request_1.0.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/VIS_granskning%20-%20clinicalprocess_activity_request_1.0.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/VIS_granskning%20-%20clinicalprocess_activity_request_1.0.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_activity_request/1.0.1/ServiceContracts_clinicalprocess_activity_request_1.0.1%20(1).zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/1.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td>IS, TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activity.request/src/master">källkod</a></td></tr>
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
