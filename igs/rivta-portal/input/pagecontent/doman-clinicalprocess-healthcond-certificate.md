<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>Domänens syfte är att möjliggöra elektronisk hantering av intyg, samt att göra det möjligt för intygsutfärdare och intygsmottagare att kommunicera i arbetet med ett intyg.
 
De informationsflöden som stöds av domänen kan delas in i tre olika perspektiv: Det första är informationsöverföring mellan ett vårdinformationssystem (journalsystem) och en intygsapplikation, vilket gör det möjligt för hälso- och sjukvårdspersonal att hantera delar av intygsutfärdandeprocessen i det system där de huvudsakligen arbetar. Det andra är informationsöverföring mellan en intygsapplikation och en central intygstjänst, vilket möjliggör vidare användning av elektroniska intyg såsom elektronisk överföring till intygsmottagare, åtkomst till elektroniska intyg för patienter, statistikbearbetning, och användning för uppföljning.  Det tredje är informationsöverföring mellan en central intygstjänst och system som tillhör intygsmottagare.</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>Intygshantering</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_healthcond_certificate/index.html">TKB_clinicalprocess_healthcond_certificate</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/issues">Bitbucket issues</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>CertificateStatusUpdateForCare</td><td>3.2</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:3:rivtabp21</code></td></tr>
<tr><td>CertificateStatusUpdateForCare</td><td>2.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:2:rivtabp21</code></td></tr>
<tr><td>CertificateStatusUpdateForCare</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:1:rivtabp21</code></td></tr>
<tr><td>CreateDraftCertificate</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3:rivtabp21</code></td></tr>
<tr><td>CreateDraftCertificate</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:2:rivtabp21</code></td></tr>
<tr><td>CreateDraftCertificate</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:1:rivtabp21</code></td></tr>
<tr><td>GetCertificate</td><td>2.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2:rivtabp21</code></td></tr>
<tr><td>GetCertificate</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:1:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCare</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCare</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:2:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCare</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:1:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCareWithQA</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCareWithQA</td><td>2.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:2:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCareWithQA</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:1:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCitizen</td><td>4.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:4:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCitizen</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:3:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCitizen</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:2:rivtabp21</code></td></tr>
<tr><td>ListCertificatesForCitizen</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:1:rivtabp21</code></td></tr>
<tr><td>ListSickLeavesForCare</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1:rivtabp21</code></td></tr>
<tr><td>RegisterCertificate</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3:rivtabp21</code></td></tr>
<tr><td>RegisterCertificate</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:2:rivtabp21</code></td></tr>
<tr><td>RegisterCertificate</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:1:rivtabp21</code></td></tr>
<tr><td>RevokeCertificate</td><td>2.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2:rivtabp21</code></td></tr>
<tr><td>RevokeCertificate</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:1:rivtabp21</code></td></tr>
<tr><td>SendCertificateToRecipient</td><td>2.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2:rivtabp21</code></td></tr>
<tr><td>SendCertificateToRecipient</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:1:rivtabp21</code></td></tr>
<tr><td>SendMessageToCare</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:2:rivtabp21</code></td></tr>
<tr><td>SendMessageToCare</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:1:rivtabp21</code></td></tr>
<tr><td>SendMessageToRecipient</td><td>2.1</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SendMessageToRecipient:2:rivtabp21</code></td></tr>
<tr><td>SendMessageToRecipient</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SendMessageToRecipient:1:rivtabp21</code></td></tr>
<tr><td>SetCertificateStatus</td><td>2.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:2:rivtabp21</code></td></tr>
<tr><td>SetCertificateStatus</td><td>1.0</td><td>rivtabp21</td><td><code>urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:1:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>4.0.5</td><td>AB, TKB, IS</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/T-granskning_clinicalprocess_healthcond_certificate_4.0.5.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/VIS_granskning_clinicalprocess.healthcond.certificate_4.0.5.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/VIS_granskning_clinicalprocess.healthcond.certificate_4.0.5.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/ServiceContracts_clinicalprocess_healthcond_certificate_4.0.5.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.0.5">källkod</a></td></tr>
<tr><td>4.0.4</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.4/T-granskning_clinicalprocess_healthcond_certificate_4.0.4.dotx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.4/ServiceContracts_clinicalprocess_healthcond_certificate_4.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.0.4">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, IS, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
