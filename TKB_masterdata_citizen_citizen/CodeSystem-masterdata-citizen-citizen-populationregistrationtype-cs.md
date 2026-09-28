# Kod för folkbokföringskategori - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kod för folkbokföringskategori**

## CodeSystem: Kod för folkbokföringskategori 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-populationregistrationtype-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:PopulationRegistrationTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för PopulationRegistrationTypeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kod för folkbokföringskategori](ValueSet-masterdata-citizen-citizen-populationregistrationtype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-populationregistrationtype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-populationregistrationtype-cs",
  "version" : "2.0.0",
  "name" : "PopulationRegistrationTypeCS",
  "title" : "Kod för folkbokföringskategori",
  "status" : "active",
  "date" : "2026-09-28T09:13:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för PopulationRegistrationTypeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "FB",
    "display" : "Folkbokförd"
  },
  {
    "code" : "UV",
    "display" : "Utvandrad"
  },
  {
    "code" : "OB",
    "display" : "Avregistrerad som försvunnen"
  }]
}

```
