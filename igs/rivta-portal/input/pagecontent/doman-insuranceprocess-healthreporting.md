<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>Denna tjänstedomän syftar till att hantera vårdgivarperspektivet på sjukskrivningsprocessen för en individ.

Tjänstekontrakten inom domänen hanterar vårdens, Försäkringskassans och invånarens behov av e-tjänster för hantering av läkarintyg (Blankett FK 7263). Dessutom hanteras stödprocesser för ärendehantering kring ett läkarintyg sk frågor och svar. Även processer för att hantera frågor i svar från Försäkringskassan till vårdens sk ärendelåda ingår.</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>intygshantering</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_insuranceprocess_healthreporting/index.html">TKB_insuranceprocess_healthreporting</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/issues">Bitbucket issues</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>DeleteAnswers</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1:rivtabp20</code></td></tr>
<tr><td>DeleteQuestions</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1:rivtabp20</code></td></tr>
<tr><td>FindAllAnswers</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1:rivtabp20</code></td></tr>
<tr><td>FindAllQuestions</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1:rivtabp20</code></td></tr>
<tr><td>GetCertificate</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:GetCertificate:1:rivtabp20</code></td></tr>
<tr><td>ListCertificates</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:ListCertificates:1:rivtabp20</code></td></tr>
<tr><td>ReceiveMedicalCertificateAnswer</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1:rivtabp20</code></td></tr>
<tr><td>ReceiveMedicalCertificateQuestion</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1:rivtabp20</code></td></tr>
<tr><td>RegisterMedicalCertificate</td><td>3.1</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3:rivtabp20</code></td></tr>
<tr><td>RevokeMedicalCertificate</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1:rivtabp20</code></td></tr>
<tr><td>SendMedicalCertificate</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1:rivtabp20</code></td></tr>
<tr><td>SendMedicalCertificateAnswer</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1:rivtabp20</code></td></tr>
<tr><td>SendMedicalCertificateQuestion</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1:rivtabp20</code></td></tr>
<tr><td>SetCertificateStatus</td><td>1.0</td><td>rivtabp20</td><td><code>urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1:rivtabp20</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.1.1</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads/insuranceprocess_healthreporting/3.1.1/AL-T Granskning av insuranceprocess_healthreporting_3.1.1_RC2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads/insuranceprocess_healthreporting/3.1.1/ServiceContracts_insuranceprocess_healthreporting_3.1.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/insuranceprocess_healthreporting_3.1.1">källkod</a></td></tr>
<tr><td>3.0.0</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/insuranceprocess_healthreporting/3.0.0/Servicecontracts_insuranceprocess_healthreporting_3.0.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/TD_3_0_0_R">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
