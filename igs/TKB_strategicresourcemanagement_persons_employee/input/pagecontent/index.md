# strategicresourcemanagement: persons: employee

<!-- tkb-version -->
**TKB-version:** 2.0_RC1 · **IG-version:** 2.0.0-rc1 · **Källa:** Bitbucket-tagg `2.0_RC1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med tjänstedomänen är att förse övriga e-tjänster med kvalitetssäkrade och aktuella personuppgifter om personer som är anställda inom, eller arbetar på uppdrag av, organisationer inom vård och omsorg. Tjänstekontrakten inom domänen används främst för att göra sökningar efter kontaktinformation och andra egenskaper för personer verksamma inom vård och omsorg. Tjänstekontrakten möjliggör också att e-tjänster kan lista tillgängliga medarbetare inom en specifik vårdenhet.</td></tr>
<tr><th>Svenskt kortnamn</th><td>medarbetare</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:medarbetare</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.employee/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.employee/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.employee/src/2.0_RC1">tagg 2.0_RC1</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.employee/get/2.0_RC1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **strategicresourcemanagement: persons: employee** (infrastruktur: katalogtjänster: medarbetare), version 2.0_RC1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) och domänens WSDL- och XSD-filer i taggen 2.0_RC1 (2016-11-22).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.employee (GetEmployee och GetEmployeeIncludingProtectedPerson 4.0, GetCommissionMembers och GetCommissionMembersIncludingProtectedPerson 3.0), som har en egen IG. Domänens repo är sedan dess tomt.

Domänen förser e-tjänster med uppgifter ur HSA om personer som är anställda inom, eller arbetar på uppdrag av, organisationer inom vård och omsorg.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetEmployeeIncludingProtectedPerson](7-tjanstekontrakt.html#getemployeeincludingprotectedperson) | 2.0 | GetEmployeeIncludingProtectedPerson returnerar information, som kontaktinformation samt legitimerad yrkesgrupp och specialitet, för angiven person. Metoden kan användas av en tjänstekonsument för att t.ex. verifiera uppgifter i en egen intern användardatabas, för att kunna registrera en användare (med HSA-id) baserat på användarens person-id eller för att verifiera behörighet för det fall att denna grundar sig enbart på den personliga egenskapen Legitimerad yrkesgrupp. |
| [GetEmployee](7-tjanstekontrakt.html#getemployee) | 2.0 | Metoden är identisk med GetEmployeeIncludingProtectedPerson, förutom att skyddade personer aldrig returneras. |
| [GetCommissionMembersIncludingProtectedPerson](7-tjanstekontrakt.html#getcommissionmembersincludingprotectedperson) | 2.0 | GetCommissionMembersIncludingProtectedPerson returnerar information, som namn, kontaktinformation samt legitimerad yrkesgrupp och specialitet, om personer som är kopplade till medarbetaruppdrag för angiven enhet eller organisation och kopplingen är inom ev angivna start- och slutdatum. Listan kan vid behov filtreras. Metoden kan användas av en tjänstekonsument för att t.ex. för en administratör presentera en lista med valbara personer för registrering i en intern användardatabas eller för tilldelning av ärenden. |
| [GetCommissionMembers](7-tjanstekontrakt.html#getcommissionmembers) | 2.0 | Metoden är identisk med GetCommissionMembersIncludingProtectedPerson, förutom att skyddade personer aldrig returneras. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0_RC1</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_employee/2.0_RC1/T-granskning%20strategicresourcemanagement_persons_employee_2.0_RC1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_employee/2.0_RC1/ServiceContracts_strategicresourcemanagement_persons_employee_2.0_RC1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.employee/src/2.0_RC1">källkod</a></td></tr>
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
* [8 Bilaga, attributtabeller](8-bilaga-attributtabeller.html)
* [Artefakter](artifacts.html)
