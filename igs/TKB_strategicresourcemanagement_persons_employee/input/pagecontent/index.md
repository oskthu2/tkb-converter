# strategicresourcemanagement: persons: employee

## Översikt

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
