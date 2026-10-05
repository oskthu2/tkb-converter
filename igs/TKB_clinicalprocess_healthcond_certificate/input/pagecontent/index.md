# clinicalprocess: healthcond: certificate

<!-- tkb-version -->
**TKB-version:** 4.1_RC1 · **IG-version:** 4.1.0-rc1 · **Källa:** Bitbucket-commit `be04ee5a3fad`, efter taggen `4.1_RC1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Domänens syfte är att möjliggöra elektronisk hantering av intyg, samt att göra det möjligt för intygsutfärdare och intygsmottagare att kommunicera i arbetet med ett intyg. De informationsflöden som stöds av domänen kan delas in i tre olika perspektiv: Det första är informationsöverföring mellan ett vårdinformationssystem (journalsystem) och en intygsapplikation, vilket gör det möjligt för hälso- och sjukvårdspersonal att hantera delar av intygsutfärdandeprocessen i det system där de huvudsakligen arbetar. Det andra är informationsöverföring mellan en intygsapplikation och en central intygstjänst, vilket möjliggör vidare användning av elektroniska intyg såsom elektronisk överföring till intygsmottagare, åtkomst till elektroniska intyg för patienter, statistikbearbetning, och användning för uppföljning. Det tredje är informationsöverföring mellan en central intygstjänst och system som tillhör intygsmottagare.</td></tr>
<tr><th>Svenskt kortnamn</th><td>Intygshantering</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 4.1_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.1_RC1">tagg 4.1_RC1</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: healthcond: certificate** version 4.1_RC1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar digitala intyg och tillhörande kommunikation inom hälso- och sjukvården. Den
inkluderar tjänstekontrakt för att registrera, hämta, makulera och skicka intyg samt ärendekommunikation
kring intyg.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCertificate](7-tjanstekontrakt.html#getcertificate) | 2.1 | Hämtar ett enskilt intyg och tillhörande metadata |
| [ListCertificatesForCare](7-tjanstekontrakt.html#listcertificatesforcare) | 3.1 | Listar intyg för en patient på en eller flera enheter (vård) |
| [ListCertificatesForCitizen](7-tjanstekontrakt.html#listcertificatesforcitizen) | 4.0 | Listar intyg för en patient (invånartjänst) |
| [RegisterCertificate](7-tjanstekontrakt.html#registercertificate) | 3.1 | Registrerar ett intyg i en intygstjänst |
| [RevokeCertificate](7-tjanstekontrakt.html#revokecertificate) | 2.1 | Makulerar ett registrerat intyg |
| [SendCertificateToRecipient](7-tjanstekontrakt.html#sendcertificatetorecipient) | 2.1 | Skickar ett intyg till en intygsmottagare |
| [SendMessageToCare](7-tjanstekontrakt.html#sendmessagetocare) | 2.0 | Skickar meddelande från intygsmottagare till vården |
| [SendMessageToRecipient](7-tjanstekontrakt.html#sendmessagetorecipient) | 2.1 | Skickar meddelande från vården till intygsmottagare |
| [SetCertificateStatus](7-tjanstekontrakt.html#setcertificatestatus) | 2.0 | Sätter status för ett intyg |
| [CreateDraftCertificate](7-tjanstekontrakt.html#createdraftcertificate) | 3.2 | Skapar ett intygsutkast i en intygsapplikation |
| [CertificateStatusUpdateForCare](7-tjanstekontrakt.html#certificatestatusupdateforcare) | 3.1 | Skickar uppdateringar om ett intyg och ärendekommunikation |
| [ListCertificatesForCareWithQA](7-tjanstekontrakt.html#listcertificatesforcarewithqa) | 3.2 | Listar intyg med händelser och ärendekommunikation |
| [ListSickLeavesForCare](7-tjanstekontrakt.html#listsickleavesforcare) | 1.0 | Listar pågående sjukfall på en enhet |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>4.0.5</td><td>AB, TKB, IS</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/T-granskning_clinicalprocess_healthcond_certificate_4.0.5.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/VIS_granskning_clinicalprocess.healthcond.certificate_4.0.5.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/VIS_granskning_clinicalprocess.healthcond.certificate_4.0.5.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.5/ServiceContracts_clinicalprocess_healthcond_certificate_4.0.5.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.0.5">källkod</a></td></tr>
<tr><td>4.0.4</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.4/T-granskning_clinicalprocess_healthcond_certificate_4.0.4.dotx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_healthcond_certificate/4.0.4/ServiceContracts_clinicalprocess_healthcond_certificate_4.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/4.0.4">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, IS, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.certificate/src/master">källkod</a></td></tr>
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
