<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare. Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ.

*OBSERVERA: I releasepaketet nedan finns testsviter för två av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>spärrhantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:spärrhantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_informationsecurity_authorization_blocking/index.html">TKB_informationsecurity_authorization_blocking</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src">Bitbucket</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>CancelTemporaryExtendedRevoke</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevoke:4:rivtabp21</code></td></tr>
<tr><td>CheckBlocks</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:CheckBlocks:4:rivtabp21</code></td></tr>
<tr><td>DeleteExtendedBlock</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlock:4:rivtabp21</code></td></tr>
<tr><td>GetBlocks</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:GetBlocks:4:rivtabp21</code></td></tr>
<tr><td>GetBlocksForQualityRegistry</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:GetBlocksForQualityRegistry:1:rivtabp21</code></td></tr>
<tr><td>GetExtendedBlocksForPatient</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatient:4:rivtabp21</code></td></tr>
<tr><td>GetPatientIds</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:GetPatientIds:4:rivtabp21</code></td></tr>
<tr><td>RegisterBlock</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RegisterBlock:4:rivtabp21</code></td></tr>
<tr><td>RegisterBlockForQualityRegistry</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RegisterBlockForQualityRegistry:1:rivtabp21</code></td></tr>
<tr><td>RegisterExtendedBlock</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlock:4:rivtabp21</code></td></tr>
<tr><td>RegisterTemporaryExtendedRevoke</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryExtendedRevoke:4:rivtabp21</code></td></tr>
<tr><td>RegisterTemporaryRevoke</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevoke:4:rivtabp21</code></td></tr>
<tr><td>RemoveBlockForQualityRegistry</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RemoveBlockForQualityRegistry:1:rivtabp21</code></td></tr>
<tr><td>RevokeExtendedBlock</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlock:4:rivtabp21</code></td></tr>
<tr><td>UnregisterBlock</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:UnregisterBlock:4:rivtabp21</code></td></tr>
<tr><td>UnregisterTemporaryRevoke</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevoke:4:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>4.0.3</td><td>AB, TKB, IS</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/T-granskning -  informationsecurity_authorization_blocking_4.0.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/VIS_granskning - informationsecurity_authorization_blocking_4.0.3.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/VIS_granskning - informationsecurity_authorization_blocking_4.0.3.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/ServiceContracts_informationsecurity_authorization_blocking_4.0.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.3">källkod</a></td></tr>
<tr><td>4.0.1</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.1/T-Granskning-riv.informationsecurity.authorization.blocking_4_0_1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.1/ServiceContracts_informationsecurity_authorization_blocking_4.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
