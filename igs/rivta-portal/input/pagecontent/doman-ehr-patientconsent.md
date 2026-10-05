<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: 
samtyckestjänst - informationsecurity:authorization:consent 

För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke. Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina &quot;egna&quot; samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa.</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>samtyckeshantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:samtyckeshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_ehr_patientconsent/index.html">TKB_ehr_patientconsent</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/issues">Bitbucket issues</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>CancelExtendedConsent</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:administration:CancelExtendedConsent:1:rivtabp21</code></td></tr>
<tr><td>CheckConsent</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:accesscontrol:CheckConsent:1:rivtabp21</code></td></tr>
<tr><td>DeleteExtendedConsent</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:administration:DeleteExtendedConsent:1:rivtabp21</code></td></tr>
<tr><td>GetConsentsForCareProvider</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:querying:GetConsentsForCareProvider:1:rivtabp21</code></td></tr>
<tr><td>GetConsentsForPatient</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:querying:GetConsentsForPatient:1:rivtabp21</code></td></tr>
<tr><td>GetExtendedConsentsForPatient</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatient:1:rivtabp21</code></td></tr>
<tr><td>RegisterExtendedConsent</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:ehr:patientconsent:administration:RegisterExtendedConsent:1:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.1</td><td>TKB, AB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/ehr_patientconsent/1.0.1/ServiceContracts_ehr_patientconsent_1_0_1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/ehr_patientconsent_1.0.1_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
