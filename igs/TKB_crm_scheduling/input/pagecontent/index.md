# crm: scheduling

<!-- tkb-version -->
**TKB-version:** 1.1.6 · **IG-version:** 1.1.6 · **Källa:** Bitbucket-commit `d5bfa3372dce`, efter taggen `1.1.6`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tidbokning gör det möjligt för invånaren att själv hantera sina tider i vården. Tills vidare är det beslutat att endast agentanslutningar behöver inkomma med självdeklarationer.</td></tr>
<tr><th>Svenskt kortnamn</th><td>tidbokning</td></tr>
<tr><th>Svenskt namn</th><td>individens processtöd:tillgängliggör kontaktväg:tidbokning</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/wiki">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.1.6 · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/1.1.6">tagg 1.1.6</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **crm: scheduling** version 1.1.6.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänens omfattning är invånarperspektivet på tidbokning mot en vårdenhet. Den kravställande processen är invånarens behov av e-tjänster för tidbokning — direkt som användare (ex. 1177 Vårdguidens e-tjänster), eller indirekt via vårdpersonal (ex. Rådgivningsstödet, RGS).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [CancelBooking](7-tjanstekontrakt.html#cancelbooking) | 1.1 | Avboka en bokning vid en vårdenhet |
| [GetAllCareTypes](7-tjanstekontrakt.html#getallcaretypes) | 1.1 | Hämta lista över bokningsbara vårdtyper hos en vårdenhet |
| [GetAllHealthcareFacilities](7-tjanstekontrakt.html#getallhealthcarefacilities) | 1.1 | Hämta alla vårdenheter tillgängliga för bokning |
| [GetAllPerformers](7-tjanstekontrakt.html#getallperformers) | 1.1 | Hämta lista över bokningsbara utförare |
| [GetAllTimeTypes](7-tjanstekontrakt.html#getalltimetypes) | 1.1 | Hämta alla tidstyper för nybokning |
| [GetAvailableDates](7-tjanstekontrakt.html#getavailabledates) | 1.1 | Hämta datum med lediga tider |
| [GetAvailableTimeslots](7-tjanstekontrakt.html#getavailabletimeslots) | 1.1 | Hämta lediga tider för datumintervall |
| [GetBookingDetails](7-tjanstekontrakt.html#getbookingdetails) | 1.1 | Hämta detaljinformation för en befintlig bokning |
| [GetSubjectOfCareSchedule](7-tjanstekontrakt.html#getsubjectofcareschedule) | 1.1 | Hämta alla bokade tider för en invånare |
| [MakeBooking](7-tjanstekontrakt.html#makebooking) | 1.1 | Skapa nybokning vid en vårdenhet |
| [UpdateBooking](7-tjanstekontrakt.html#updatebooking) | 1.1 | Uppdatera/omboka en befintlig bokning |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.1.3</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/T-granskning%20-%20crm_scheduling_1.1.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/VIS_gransknings%20-%20crm_scheduling_1.1.3.docx">Arkitektur &amp; Regelverk: Säkerhet: Underkänd</a><br/><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/VIS_gransknings%20-%20crm_scheduling_1.1.3.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a></td><td><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/ServiceContracts_crm_scheduling_1.1.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/1.1.3">källkod</a></td></tr>
<tr><td>1.1.1</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/crm_scheduling/1.1.1/TD_SCHEDULING_1_1_1_R.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/TD_SCHEDULING_1_1_1_R">källkod</a></td></tr>
<tr><td>1.0.4</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/crm_scheduling/1.0.4/ServiceContracts_crm_scheduling_1.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/TD_SCHEDULING_1_0_4_R">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/master">källkod</a></td></tr>
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
