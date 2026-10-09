# infrastructure: directory: employee

<!-- tkb-version -->
**TKB-version:** 4.0 · **IG-version:** 4.0.0-snapshot · **Källa:** Bitbucket-commit `35b5c769b2bc` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrade och aktuella personuppgifter om personer som är anställda inom eller arbetar på uppdrag av organisationer verksamma inom vård och omsorg. Användningsområden utgörs främst av vårdprofessionens sökningar efter kontaktinformation och andra egenskaper för personer verksamma inom vård och omsorg.</td></tr>
<tr><th>Svenskt kortnamn</th><td>medarbetare</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:medarbetare</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 4.0 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/src/35b5c769b2bcf8413d3006893a3f17736358298e">commit 35b5c769b2bc</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/downloads/">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: directory: employee** version 4.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänen innehåller tjänstekontrakt för att hämta information om personer som är anställda inom eller arbetar på uppdrag av en organisation verksam inom svensk vård och omsorg (Katalogtjänst HSA).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetEmployeeIncludingProtectedPerson](7-tjanstekontrakt.html#getemployeeincludingprotectedperson) | 4.0 | Hämtar information om en angiven person, inklusive skyddade personer |
| [GetEmployee](7-tjanstekontrakt.html#getemployee) | 4.0 | Hämtar information om en angiven person (exkluderar skyddade personer) |
| [GetCommissionMembersIncludingProtectedPerson](7-tjanstekontrakt.html#getcommissionmembersincludingprotectedperson) | 3.0 | Hämtar personal med vårdmedarbetaruppdrag inom en vårdenhet, inklusive skyddade personer |
| [GetCommissionMembers](7-tjanstekontrakt.html#getcommissionmembers) | 3.0 | Hämtar personal med vårdmedarbetaruppdrag inom en vårdenhet (exkluderar skyddade personer) |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.0</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_employee/3.0/VIS_granskning%20-%20infrastructure_directory_employee_3.0.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_employee/3.0/T-granskning%20-%20%20%20infrastructure_directory_employee_3.0.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_employee/3.0/VIS_granskning%20-%20infrastructure_directory_employee_3.0.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_employee/3.0/ServiceContracts_infrastructure_directory_employee_3.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/src/3.0">källkod</a></td></tr>
<tr><td>2.2</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_employee/2.2/T-granskning%20-%20Infrastructure.directory.employee_2.2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_employee/2.2/ServiceContracts_infrastructure_directory_employee_2.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/src/2.2">källkod</a></td></tr>
<tr><td>2.1</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_employee/2.1/T-granskning%20-%20infrastructure_directory_employee_2.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_employee/2.1/VIS_granskning%20-%20infrastructure_directory_employee_2.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_employee/2.1/VIS_granskning%20-%20infrastructure_directory_employee_2.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_employee/2.1/ServiceContracts_infrastructure_directory_employee_2.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/src/2.1">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.employee/src/master">källkod</a></td></tr>
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
