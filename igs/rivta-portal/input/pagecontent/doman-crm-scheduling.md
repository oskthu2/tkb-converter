<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>Tidbokning gör det möjligt för invånaren att själv hantera sina tider i vården.

Tills vidare är det beslutat att endast agentanslutningar behöver inkomma med självdeklarationer.</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>tidbokning</td></tr>
<tr><th>Svenskt namn</th><td>individens processtöd:tillgängliggör kontaktväg:tidbokning</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_crm_scheduling/index.html">TKB_crm_scheduling</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/wiki">Confluence</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>CancelBooking</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:CancelBooking:1:rivtabp21</code></td></tr>
<tr><td>GetAllCareTypes</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetAllCareTypes:1:rivtabp21</code></td></tr>
<tr><td>GetAllHealthcareFacilities</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetAllHealthcareFacilities:1:rivtabp21</code></td></tr>
<tr><td>GetAllPerformers</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetAllPerformers:1:rivtabp21</code></td></tr>
<tr><td>GetAllTimeTypes</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetAllTimeTypes:1:rivtabp21</code></td></tr>
<tr><td>GetAvailableDates</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetAvailableDates:1:rivtabp21</code></td></tr>
<tr><td>GetAvailableTimeslots</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetAvailableTimeslots:1:rivtabp21</code></td></tr>
<tr><td>GetBookingDetails</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetBookingDetails:1:rivtabp21</code></td></tr>
<tr><td>GetCancelledAndRebooked</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:crm:scheduling:GetCancelledAndRebooked:1:rivtabp20</code></td></tr>
<tr><td>GetSubjectOfCareSchedule</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1:rivtabp21</code></td></tr>
<tr><td>MakeBooking</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:MakeBooking:1:rivtabp21</code></td></tr>
<tr><td>UpdateBooking</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:crm:scheduling:UpdateBooking:1:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.1.3</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/T-granskning - crm_scheduling_1.1.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/VIS_gransknings - crm_scheduling_1.1.3.docx">Arkitektur &amp; Regelverk: Säkerhet: Underkänd</a><br/><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/VIS_gransknings - crm_scheduling_1.1.3.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a></td><td><a href="http://rivta.se/downloads//crm_scheduling/1.1.3/ServiceContracts_crm_scheduling_1.1.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/1.1.3">källkod</a></td></tr>
<tr><td>1.1.1</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/crm_scheduling/1.1.1/TD_SCHEDULING_1_1_1_R.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/TD_SCHEDULING_1_1_1_R">källkod</a></td></tr>
<tr><td>1.0.4</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/crm_scheduling/1.0.4/ServiceContracts_crm_scheduling_1.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/TD_SCHEDULING_1_0_4_R">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
