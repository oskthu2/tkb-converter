# processdevelopment: infections

<!-- tkb-version -->
**TKB-version:** 1.0.2 · **IG-version:** 1.0.2 · **Källa:** Bitbucket-tagg `1.0.2`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Typ</th><td>Applikationsspecifik tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.processdevelopment.infections/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.processdevelopment.infections/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.2 · <a href="https://bitbucket.org/rivta-domains/riv.processdevelopment.infections/src/1.0.2">tagg 1.0.2</a> · <a href="https://bitbucket.org/rivta-domains/riv.processdevelopment.infections/get/1.0.2.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **processdevelopment: infections** version 1.0.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen omfattar tjänstekontrakt för registrering och radering av tidigare registreringar av
infektioner, antibiotikaanvändning, mikrobiologiska laboratoriesvar, åtgärder, tillstånd samt
vårdtillfällen i det nationella Infektionsverktyget.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessPrescriptionReason](7-tjanstekontrakt.html#processprescriptionreason) | 1.0 | Registrerar en ordinationsorsak. |
| [ProcessLaboratoryReport](7-tjanstekontrakt.html#processlaboratoryreport) | 1.0 | Registrerar ett laboratoriesvar. |
| [ProcessActivity](7-tjanstekontrakt.html#processactivity) | 1.0 | Registrerar en eller flera aktiviteter. |
| [ProcessCondition](7-tjanstekontrakt.html#processcondition) | 1.0 | Registrerar ett bedömt hälsorelaterat tillstånd. |
| [ProcessCareEncounter](7-tjanstekontrakt.html#processcareencounter) | 1.0 | Registrerar en patientplacering (vårdkontakt). |
| [DeletePrescriptionReason](7-tjanstekontrakt.html#deleteprescriptionreason) | 1.0 | Raderar en tidigare registrerad ordinationsorsak. |
| [DeletePrescription](7-tjanstekontrakt.html#deleteprescription) | 1.0 | Raderar en tidigare registrerad ordination. |
| [DeleteLaboratoryReport](7-tjanstekontrakt.html#deletelaboratoryreport) | 1.0 | Raderar ett tidigare registrerat laboratoriesvar. |
| [DeleteActivity](7-tjanstekontrakt.html#deleteactivity) | 1.0 | Raderar en tidigare registrerad aktivitet. |
| [DeleteCondition](7-tjanstekontrakt.html#deletecondition) | 1.0 | Raderar ett tidigare registrerat tillstånd. |
| [DeleteCareEncounter](7-tjanstekontrakt.html#deletecareencounter) | 1.0 | Raderar en tidigare registrerad vårdkontakt. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.1</td><td>TKB, TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/processdevelopment_infections/1.0.1/ServiceContracts_processdevelopment_infections_1.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.processdevelopment.infections/src/processdevelopment_infections_1.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.processdevelopment.infections/src/master">källkod</a></td></tr>
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
