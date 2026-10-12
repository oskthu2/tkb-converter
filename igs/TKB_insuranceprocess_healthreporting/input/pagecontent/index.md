# insuranceprocess: healthreporting

<!-- tkb-version -->
**TKB-version:** 3.1.1 · **IG-version:** 3.1.1 · **Källa:** Bitbucket-tagg `insuranceprocess_healthreporting_3.1.1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna tjänstedomän syftar till att hantera vårdgivarperspektivet på sjukskrivningsprocessen för en individ. Tjänstekontrakten inom domänen hanterar vårdens, Försäkringskassans och invånarens behov av e-tjänster för hantering av läkarintyg (Blankett FK 7263). Dessutom hanteras stödprocesser för ärendehantering kring ett läkarintyg sk frågor och svar. Även processer för att hantera frågor i svar från Försäkringskassan till vårdens sk ärendelåda ingår.</td></tr>
<tr><th>Svenskt kortnamn</th><td>intygshantering</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 3.1.1 · <a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/insuranceprocess_healthreporting_3.1.1">tagg insuranceprocess_healthreporting_3.1.1</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **insuranceprocess: healthreporting** version 3.1.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [RegisterMedicalCertificate](7-tjanstekontrakt.html#registermedicalcertificate) | 3.1 | Skicka ett komplett läkarintyg med informationsmängden enligt blankett FK7263 |
| [ReceiveMedicalCertificateQuestion](7-tjanstekontrakt.html#receivemedicalcertificatequestion) | 1.0 | Ta emot en fråga om ett läkarintyg |
| [ReceiveMedicalCertificateAnswer](7-tjanstekontrakt.html#receivemedicalcertificateanswer) | 1.0 | Ta emot ett svar på en fråga om ett läkarintyg |
| [SendMedicalCertificateQuestion](7-tjanstekontrakt.html#sendmedicalcertificatequestion) | 1.0 | Skicka en fråga om ett läkarintyg |
| [SendMedicalCertificateAnswer](7-tjanstekontrakt.html#sendmedicalcertificateanswer) | 1.0 | Skicka ett svar på en fråga om ett läkarintyg |
| [FindAllQuestions](7-tjanstekontrakt.html#findallquestions) | 1.0 | Söka bland frågor om läkarintyg |
| [FindAllAnswers](7-tjanstekontrakt.html#findallanswers) | 1.0 | Söka bland svar på frågor om läkarintyg |
| [DeleteQuestions](7-tjanstekontrakt.html#deletequestions) | 1.0 | Ta bort frågor om ett läkarintyg |
| [DeleteAnswers](7-tjanstekontrakt.html#deleteanswers) | 1.0 | Ta bort svar på frågor om ett läkarintyg |
| [RevokeMedicalCertificate](7-tjanstekontrakt.html#revokemedicalcertificate) | 1.0 | Makulera ett läkarintyg |
| [SendMedicalCertificate](7-tjanstekontrakt.html#sendmedicalcertificate) | 1.0 | Skicka ett läkarintyg |
| [ListCertificates](7-tjanstekontrakt.html#listcertificates) | 1.0 | Lista läkarintyg |
| [GetCertificate](7-tjanstekontrakt.html#getcertificate) | 1.0 | Hämta ett specifikt läkarintyg |
| [SetCertificateStatus](7-tjanstekontrakt.html#setcertificatestatus) | 1.0 | Sätta status på ett läkarintyg |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.1.1</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads/insuranceprocess_healthreporting/3.1.1/AL-T%20Granskning%20av%20insuranceprocess_healthreporting_3.1.1_RC2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads/insuranceprocess_healthreporting/3.1.1/ServiceContracts_insuranceprocess_healthreporting_3.1.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/insuranceprocess_healthreporting_3.1.1">källkod</a></td></tr>
<tr><td>3.0.0</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/insuranceprocess_healthreporting/3.0.0/Servicecontracts_insuranceprocess_healthreporting_3.0.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/TD_3_0_0_R">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.insuranceprocess.healthreporting/src/master">källkod</a></td></tr>
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
