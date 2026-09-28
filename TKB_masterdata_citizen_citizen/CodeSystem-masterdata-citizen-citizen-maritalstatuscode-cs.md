# Civilståndskod - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Civilståndskod**

## CodeSystem: Civilståndskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-maritalstatuscode-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:MaritalStatusCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för MaritalStatusCodeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Civilståndskod](ValueSet-masterdata-citizen-citizen-maritalstatuscode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-maritalstatuscode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-maritalstatuscode-cs",
  "version" : "2.0.0",
  "name" : "MaritalStatusCodeCS",
  "title" : "Civilståndskod",
  "status" : "active",
  "date" : "2026-09-28T09:13:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för MaritalStatusCodeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "OG",
    "display" : "Ogift"
  },
  {
    "code" : "G",
    "display" : "Gift"
  },
  {
    "code" : "A",
    "display" : "Änka/änkling"
  },
  {
    "code" : "S",
    "display" : "Skild"
  },
  {
    "code" : "RP",
    "display" : "Registrerad partner"
  },
  {
    "code" : "SP",
    "display" : "Skild partner"
  },
  {
    "code" : "EP",
    "display" : "Efterlevande partner"
  }]
}

```
