<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen:
spärrhantering - informationsecurity:authorization:blocking

Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare. Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ.</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>spärrhantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:spärrhantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_ehr_blocking/index.html">TKB_ehr_blocking</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/issues">Bitbucket issues</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>CancelTemporaryExtendedRevoke</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevoke:2:rivtabp21</code></td></tr>
<tr><td>CheckBlocks</td><td>3.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:accesscontrol:CheckBlocks:3:rivtabp21</code></td></tr>
<tr><td>CheckBlocks</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:accesscontrol:CheckBlocks:2:rivtabp21</code></td></tr>
<tr><td>DeleteExtendedBlock</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:DeleteExtendedBlock:2:rivtabp21</code></td></tr>
<tr><td>GetAllBlocks</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:querying:GetAllBlocks:2:rivtabp21</code></td></tr>
<tr><td>GetAllBlocksForPatient</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:querying:GetAllBlocksForPatient:2:rivtabp21</code></td></tr>
<tr><td>GetBlocks</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:querying:GetBlocks:2:rivtabp21</code></td></tr>
<tr><td>GetBlocksForPatient</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:querying:GetBlocksForPatient:2:rivtabp21</code></td></tr>
<tr><td>GetExtendedBlocksForPatient</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatient:2:rivtabp21</code></td></tr>
<tr><td>GetPatientIds</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:GetPatientIds:2:rivtabp21</code></td></tr>
<tr><td>RegisterBlock</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:synchronization:RegisterBlock:2:rivtabp21</code></td></tr>
<tr><td>RegisterExtendedBlock</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:RegisterExtendedBlock:2:rivtabp21</code></td></tr>
<tr><td>RegisterTemporaryExtendedRevoke</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevoke:2:rivtabp21</code></td></tr>
<tr><td>RegisterTemporaryRevoke</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevoke:2:rivtabp21</code></td></tr>
<tr><td>RevokeExtendedBlock</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:administration:RevokeExtendedBlock:2:rivtabp21</code></td></tr>
<tr><td>UnregisterBlock</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:synchronization:UnregisterBlock:2:rivtabp21</code></td></tr>
<tr><td>UnregisterTemporaryRevoke</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevoke:2:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.2.2</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//ehr_blocking/3.2.2/T-granskning - ehr_blocking_3.2.2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//ehr_blocking/3.2.2/ServiceContracts_ehr_blocking_3.2.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_3.2.2">källkod</a></td></tr>
<tr><td>2.0</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/ehr_blocking/2.0/ServiceContracts_ehr_blocking_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_2.0">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
