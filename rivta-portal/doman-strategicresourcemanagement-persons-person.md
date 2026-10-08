# strategicresourcemanagement:persons:person - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **strategicresourcemanagement:persons:person**

## strategicresourcemanagement:persons:person

Syftet med denna domän är primärt att göra personuppgifter tillgängliga som är registrerade i Skatteverkets folkbokföringsregister. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter m.m. Domänen har även stöd för att kunna utfärda och hantera reservidentiteter (reservnummer), samt stöd för personens egna tilläggsuppgifter, såsom kontaktuppgifter och kontaktpersoner. Konsumenter av domänens information är de flesta vård- och omsorgssystem som hanterar patienter/invånare. Konsumenter kan också vara system som hanterar medarbetare, identitetshanteringssystem och liknande. *OBSERVERA: I releasepaketet nedan finns testsviter för sex av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”

* Svenskt kortnamn: Svenskt namn
  * personuppgiftshantering: underlagförprocesstöd:invånare:personuppgifter
* Svenskt kortnamn: Typ
  * personuppgiftshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * personuppgiftshantering: [TKB_strategicresourcemanagement_persons_person](https://oskthu2.github.io/tkb-converter/TKB_strategicresourcemanagement_persons_person/index.html)
* Svenskt kortnamn: Källkod
  * personuppgiftshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetFilesForOrderId | 3.0 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderId:3:rivtabp21` |
| GetPersonContactInformation | 3.1 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformation:3:rivtabp21` |
| GetPersonContactInformationUnrestricted | 3.1 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestricted:3:rivtabp21` |
| GetPersonsForProfile | 3.3 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfile:3:rivtabp21` |
| GetPersonsForProfileUnresricted | 3.1 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnresricted:3:rivtabp21` |
| GetPersonsForProfileUnrestricted | 3.3 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestricted:3:rivtabp21` |
| LinkPersonIdentity | 3.0 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentity:3:rivtabp21` |
| SearchPersonsForProfile | 3.3 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfile:3:rivtabp21` |
| SearchPersonsForProfileByOrder | 3.2 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrder:3:rivtabp21` |
| SearchPersonsForProfileByOrderUnrestricted | 3.2 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestricted:3:rivtabp21` |
| SearchPersonsForProfileUnrestricted | 3.3 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestricted:3:rivtabp21` |
| UnlinkPersonIdentity | 3.0 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentity:3:rivtabp21` |
| UpdatePerson | 3.3 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:UpdatePerson:3:rivtabp21` |
| UpdatePersonContactInformation | 3.1 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformation:3:rivtabp21` |
| UpdatePersonContactInformationUnrestricted | 3.1 | rivtabp21 | `urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestricted:3:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 3.3.1 | AB, IS, TKB | [Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/VIS_granskning - strategicresourcemanagement_persons_person_3.3.1.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/VIS_granskning - strategicresourcemanagement_persons_person_3.3.1.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/T-granskning -  strategicresourcemanagement_persons_person_3.3.1.docx) | [zip](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/ServiceContracts_strategicresourcemanagement_persons_person_3.3.1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/3.3.1) |
| 3.3 | TKB, IS, AB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/T-granskning -   strategicresourcemanagement_persons_person_3.3.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/VIS_granskning - strategicresourcemanagement_persons_person_3.3_.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/VIS_granskning - strategicresourcemanagement_persons_person_3.3_.docx) | [zip](http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/ServiceContracts_strategicresourcemanagement_persons_person_3.3.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/3.3) |
| trunk | TKB, IS, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

