# informationsecurity: auditing: log

<!-- tkb-version -->
**TKB-version:** 2.0.8 · **IG-version:** 2.0.8 · **Källa:** Bitbucket-tagg `2.0.8`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Logghantering lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation. Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten gör det också möjligt för patienten/medborgaren att själv kunna få se vilka vårdgivare som har haft åtkomst till patientens journaler via till exempel Journalen på 1177 Vårdguidens e-tjänster.</td></tr>
<tr><th>Svenskt kortnamn</th><td>loggtjänst</td></tr>
<tr><th>Svenskt namn</th><td>informationssäkerhet:uppföljning:åtkomstlogg</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.auditing.log/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0.8 · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.auditing.log/src/2.0.8">tagg 2.0.8</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.auditing.log/get/2.0.8.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **informationsecurity: auditing: log** (Loggtjänst, Informationssäkerhet: Uppföljning: Åtkomstlogg) version 2.0.8.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 2.0.8 (2024-10-24), och domänens WSDL- och XSD-filer (tagg 2.0.8).

Domänen standardiserar informationsutbytet med loggtjänster: registrering av åtkomstloggar enligt patientdatalagen och uppföljning av dem ur patientens, vårdgivarens och informationsägarens perspektiv.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [StoreLog](7-tjanstekontrakt.html#storelog) | 2.0 | Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter ska sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter. |
| [GetLogs](7-tjanstekontrakt.html#getlogs) | 2.0 | Tjänst som returnerar loggposter utifrån angivna sökkriterier, all åtkomst som har skett av vårdgivarens medarbetare. |
| [GetAccessLogsForPatient](7-tjanstekontrakt.html#getaccesslogsforpatient) | 2.0 | Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs. |
| [GetInfoLogs](7-tjanstekontrakt.html#getinfologs) | 2.0 | Tjänst som returnerar loggposter utifrån angivna sökkriterier, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare. |
| [GetLogsByOrder](7-tjanstekontrakt.html#getlogsbyorder) | 1.0 | En tjänst som returnerar ett unikt ordernummer (order-id) vilket senare kan användas för anrop av tjänsten GetFilesForOrderId för att från denna tjänst erhålla ett unikt URL, vilket man sedan kan använda för att via REST-anrop hämta hem de filer som har skapats av GetLogsByOrder, se kap 3.1.5. |
| [GetFilesForOrderId](7-tjanstekontrakt.html#getfilesfororderid) | 1.0 | Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0.4</td><td>IS, TKB, AB</td><td><a href="http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/VIS_granskning%20-%20informationsecurity_auditing_log_2.0.4.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/T-granskning_informationsecurity_auditing_log_2.0.4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/VIS_granskning%20-%20informationsecurity_auditing_log_2.0.4.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/ServiceContracts_informationsecurity_auditing_log_2.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.auditing.log/src/2.0.4">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td></td></tr>
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
