# masterdata:citizen:citizen - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **masterdata:citizen:citizen**

## masterdata:citizen:citizen

OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: personuppgiftshantering - strategicresourcemanagement:persons:person Syftet med denna domän är primärt att tillgängliggöra personuppgifter registrerade i Skatteverkets folkbokföringsregister för invånare bosatta i Sverige. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter mm. Konsumenter på domänens information kan vara de flesta vård- och omsorgssystem som hanterar patienter/invånare, men kan även behövas i system som hanterar medarbetare, katalogsystem, identitetshanteringssystem etc. Uppgifterna i tjänsteproducent hålls ajour med uppgifterna i bakomliggande register primärt genom regelbundna aviseringar (alla förändringar sedan sist), kompletterat med online-slagning om uppgift saknas i tjänsteproducent.

* Svenskt kortnamn: Svenskt namn
  * personuppgiftshantering: underlagförprocesstöd:invånare:personuppgifter
* Svenskt kortnamn: Typ
  * personuppgiftshantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * personuppgiftshantering: [TKB_masterdata_citizen_citizen](https://oskthu2.github.io/tkb-converter/TKB_masterdata_citizen_citizen/index.html)
* Svenskt kortnamn: Källkod
  * personuppgiftshantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src)
* Svenskt kortnamn: Ärenden
  * personuppgiftshantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetFilesForOrderId | 2.1 | rivtabp21 | `urn:riv:masterdata:citizen:citizen:GetFilesForOrderId:2:rivtabp21` |
| LookupResidentsForProfile | 2.1 | rivtabp21 | `urn:riv:masterdata:citizen:citizen:LookupResidentsForProfile:2:rivtabp21` |
| SearchResidentsForProfile | 2.1 | rivtabp21 | `urn:riv:masterdata:citizen:citizen:SearchResidentsForProfile:2:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 2.1_RC1 | AB, IS, TKB | [Arkitektur & Regelverk: Säkerhet: Delvis Godkänd](http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/VIS_granskning - masterdata_citizen_citizen_2.1_RC1.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/T-granskning masterdata_citizen_citizen_2.1_RC1.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/VIS_granskning - masterdata_citizen_citizen_2.1_RC1.docx) | [zip](http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/ServiceContracts_masterdata_citizen_citizen_2.1_RC1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/2.1_RC1) |
| 2.0 | AB, IS, TKB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//masterdata_citizen_citizen/2.0/VIS_granskning_masterdata_citizen_citizen_2.0.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//masterdata_citizen_citizen/2.0/AL T-Granskning masterdata_citizen_citizen_2.0.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//masterdata_citizen_citizen/2.0/VIS_granskning_masterdata_citizen_citizen_2.0.docx) | [zip](http://rivta.se/downloads//masterdata_citizen_citizen/2.0/ServiceContracts_masterdata_citizen_citizen_2.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/2.0) |
| trunk | IS, AB, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

