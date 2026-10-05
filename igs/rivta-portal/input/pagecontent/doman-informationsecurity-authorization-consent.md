<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke. Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina &quot;egna&quot; samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa.

*OBSERVERA: I releasepaketet nedan finns testsviter för tre av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>samtyckestjänst</td></tr>
<tr><th>Svenskt namn</th><td>informationssäkerhet:säkerhetstjänster:samtyckestjänst</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_informationsecurity_authorization_consent/index.html">TKB_informationsecurity_authorization_consent</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src">Bitbucket</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>CancelExtendedConsent</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:CancelExtendedConsent:2:rivtabp21</code></td></tr>
<tr><td>CheckConsent</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:CheckConsent:2:rivtabp21</code></td></tr>
<tr><td>DeleteExtendedConsent</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsent:2:rivtabp21</code></td></tr>
<tr><td>GetConsentsForCareProvider</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProvider:2:rivtabp21</code></td></tr>
<tr><td>GetConsentsForPatient</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:GetConsentsForPatient:2:rivtabp21</code></td></tr>
<tr><td>GetExtendedConsentsForPatient</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatient:2:rivtabp21</code></td></tr>
<tr><td>RegisterExtendedConsent</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsent:2:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0.2</td><td>IS, AB, TKB</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/VIS_granskning - informationsecurity_authorization_consent_2.0.2.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/VIS_granskning - informationsecurity_authorization_consent_2.0.2.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/T-granskning -  informationsecurity.authorization.consent 2.0.2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/ServiceContracts_informationsecurity_authorization_consent_2.0.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0.2">källkod</a></td></tr>
<tr><td>2.0</td><td>AB, IS, TKB, TKB</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/VIS_granskning_informationsecurity_authorization_consent_2.0.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/VIS_granskning_informationsecurity_authorization_consent_2.0.docx">Arkitektur &amp; Regelverk: Säkerhet: Delvis Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/T-granskning - informationsecurity_authorization_consent_2.0.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/ServiceContracts_informationsecurity_authorization_consent_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
