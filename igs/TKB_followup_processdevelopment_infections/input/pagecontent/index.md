# followup: processdevelopment: infections

<!-- tkb-version -->
**TKB-version:** 1.0.2 · **IG-version:** 1.0.2-snapshot · **Källa:** Bitbucket-commit `b9bb3968f778` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Infektionsuppföljning är ett nationellt enhetligt IT-stöd som ska användas i lokalt förbättringsarbete. Syftet är att förebygga vårdrelaterade infektioner och förbättra kvaliteten i användningen av antibiotika. Infektionsuppföljnings tjänstekontrakt specificerar hur informationsöverföringen om vårdkontakter, antibiotikaanvändning, diagnoser, åtgärder och mikrolaboratoriesvar ska gå till från anslutna vårdgivare. Motsvarande tjänstekontrakt finns för att specificera hur radering av tidigare registrerad information ska gå till.Infektionsuppföljning har också ett tjänstekontrakt för en terminologiurvalstjänst, som specificerar vilka termer och begrepp som är aktuella för de informationsmängder som ingår i Infektionsverktyget.</td></tr>
<tr><th>Svenskt kortnamn</th><td>infektionsuppföljning</td></tr>
<tr><th>Svenskt namn</th><td>uppföljning kärnprocess:hantera utfall för individer:infektioner</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.2 · <a href="https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src/b9bb3968f778f951a15068def0c8a9e085e9c838">commit b9bb3968f778</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **followup: processdevelopment: infections** version 1.0.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller tjänstekontrakt för registrering och radering av infektioner, antibiotikaanvändning, mikrolaboratoriesvar, åtgärder, tillstånd samt vårdtillfällen i Infektionsverktyget.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessPrescriptionReason](7-tjanstekontrakt.html#processprescriptionreason) | 1.0 | Registrerar en ordinationsorsak med information om patient, organisatorisk enhet och ordination |
| [DeletePrescriptionReason](7-tjanstekontrakt.html#deleteprescriptionreason) | 1.0 | Raderar information som tidigare registrerats via ProcessPrescriptionReason |
| [DeletePrescription](7-tjanstekontrakt.html#deleteprescription) | 1.0 | Raderar information om en ordination som registrerats via ProcessPrescriptionReason |
| [ProcessLaboratoryReport](7-tjanstekontrakt.html#processlaboratoryreport) | 1.0 | Registrerar ett nytt laboratoriesvar med tillhörande information |
| [DeleteLaboratoryReport](7-tjanstekontrakt.html#deletelaboratoryreport) | 1.0 | Raderar information som tidigare registrerats via ProcessLaboratoryReport |
| [ProcessCareEncounter](7-tjanstekontrakt.html#processcareencounter) | 1.0 | Skriver vårdkontaktsdata till Infektionsverktyget |
| [DeleteCareEncounter](7-tjanstekontrakt.html#deletecareencounter) | 1.0 | Raderar information som tidigare registrerats via ProcessCareEncounter |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.2_RC1</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/VIS_granskningsmall_infektionsverktyget_inera.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/AL-T%20Granskning%20av%20followup_processdevelopment_infections_1.02_RC1_PA_1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/VIS_granskningsmall_infektionsverktyget_inera.docx">Arkitektur &amp; Regelverk: Informatik: Delvis Godkänd</a></td><td><a href="http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/ServiceContracts_followup_processdevelopment_infections_1.0.2_RC1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src/followup_processdevelopment_infections_1.0.2_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src/master">källkod</a></td></tr>
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
