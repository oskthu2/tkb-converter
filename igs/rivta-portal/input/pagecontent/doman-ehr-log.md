<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen:
loggtjänst - informationsecurity:auditing:log

Logghantering lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation. Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten gör det också möjligt för patienten/medborgaren att själv ta del av åtkomstloggar via till exempel Mina vårdkontakter. Detta är dock ännu inte realiserat i Mina vårdkontakter (MVK).</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>logghantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:logghantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_ehr_log/index.html">TKB_ehr_log</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.log/issues">Bitbucket issues</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>GetAccessLogsForPatient</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:querying:GetAccessLogsForPatient:1:rivtabp21</code></td></tr>
<tr><td>GetInfoLogsForCareProvider</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:querying:GetInfoLogsForCareProvider:1:rivtabp21</code></td></tr>
<tr><td>GetInfoLogsForPatient</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:querying:GetInfoLogsForPatient:1:rivtabp21</code></td></tr>
<tr><td>GetLogsForCareProvider</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:querying:GetLogsForCareProvider:1:rivtabp21</code></td></tr>
<tr><td>GetLogsForPatient</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:querying:GetLogsForPatient:1:rivtabp21</code></td></tr>
<tr><td>GetLogsForUser</td><td>1.1</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:querying:GetLogsForUser:1:rivtabp21</code></td></tr>
<tr><td>StoreLog</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:log:store:StoreLog:1:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.2.3</td><td>TKB, AB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads//ehr_log/1.2.3/ServiceContracts_ehr_log_1.2.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src/1.2.3">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
