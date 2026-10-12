# infrastructure: directory: authorizationmanagement

<!-- tkb-version -->
**TKB-version:** 2.4.5 · **IG-version:** 2.4.5 · **Källa:** Bitbucket-commit `041301035a1a`, efter taggen `2.4.5`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrad och aktuell behörighetsgrundande information. Användningsområden utgörs främst av sökningar efter behörighetsgrundande egenskaper i form av information om personers uppdrag kopplade till organisation samt anställningsrelaterade och personliga egenskaper av betydelse för åtkomst till information, vilket ofta, men inte alltid, är relaterat till Patientdatalagen, PDL.</td></tr>
<tr><th>Svenskt kortnamn</th><td>behörighetshantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:behörighetshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.4.5 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.4.5">tagg 2.4.5</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: directory: authorizationmanagement** version 2.4.5.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCredentialsForPersonIncludingProtectedPerson](7-tjanstekontrakt.html#getcredentialsforpersonincludingprotectedperson) | 2.2 | Hämta PDL-behörighetsegenskaper (inkl. skyddade personer) |
| [GetCredentialsForPerson](7-tjanstekontrakt.html#getcredentialsforperson) | 2.2 | Hämta PDL-behörighetsegenskaper |
| [GetAdminCredentialsForPersonIncludingProtectedPerson](7-tjanstekontrakt.html#getadmincredentialsforpersonincludingprotectedperson) | 2.0 | Hämta administrativa behörighetsegenskaper (inkl. skyddade personer) |
| [GetAdminCredentialsForPerson](7-tjanstekontrakt.html#getadmincredentialsforperson) | 2.0 | Hämta administrativa behörighetsegenskaper |
| [GetHospLastUpdate](7-tjanstekontrakt.html#gethosplastupdate) | 1.0 | Hämta senaste HOSP-uppdateringstidpunkt |
| [GetHospCredentialsForPerson](7-tjanstekontrakt.html#gethospcredentialsforperson) | 1.0 | Hämta HOSP-behörighetsuppgifter |
| [HandleHospCertificationPerson](7-tjanstekontrakt.html#handlehospcertificationperson) | 1.0 | Hantera HOSP-certifieringsperson |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.4</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/VIS_granskning%20-%20infrastructure_directory_authorizationmanagement_2.4.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/T-granskning%20-%20%20%20infrastructure_directory_authorizationmanagement_2.4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/VIS_granskning%20-%20infrastructure_directory_authorizationmanagement_2.4.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.4/ServiceContracts_infrastructure_directory_authorizationmanagement_2.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.4">källkod</a></td></tr>
<tr><td>2.3</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.3/T-granskning%20infrastructure_directory_authorizationmanagement_2.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.3/ServiceContracts_infrastructure_directory_authorizationmanagement_2.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.3">källkod</a></td></tr>
<tr><td>2.2</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/VIS_granskning%20infrastructure_directory_authorizationmanagement_2.2.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/T-granskning%20infrastructure_directory_authorizationmanagement_2.2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/VIS_granskning%20infrastructure_directory_authorizationmanagement_2.2.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_authorizationmanagement/2.2/ServiceContracts_infrastructure_directory_authorizationmanagement_2.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/2.2">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.authorizationmanagement/src/master">källkod</a></td></tr>
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
