# Civilståndskod - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Civilståndskod**

## CodeSystem: Civilståndskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/civilstandkod-cs | *Version*:1.2 |
| Active as of 2026-09-26 | *Computable Name*:CivilstandKodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för civilstånd enligt RIV-TA population:residentmaster (CivilstandKodTYPE). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Civilståndskod — ValueSet](ValueSet-civilstandkod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "civilstandkod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/civilstandkod-cs",
  "version" : "1.2",
  "name" : "CivilstandKodCS",
  "title" : "Civilståndskod",
  "status" : "active",
  "date" : "2026-09-26T19:38:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för civilstånd enligt RIV-TA population:residentmaster (CivilstandKodTYPE).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "OG",
    "display" : "OG",
    "definition" : "Ogift"
  },
  {
    "code" : "G",
    "display" : "G",
    "definition" : "Gift"
  },
  {
    "code" : "A",
    "display" : "A",
    "definition" : "Änka/änkling"
  },
  {
    "code" : "S",
    "display" : "S",
    "definition" : "Skild"
  },
  {
    "code" : "RP",
    "display" : "RP",
    "definition" : "Registrerad partner"
  },
  {
    "code" : "SP",
    "display" : "SP",
    "definition" : "Skild partner"
  },
  {
    "code" : "EP",
    "display" : "EP",
    "definition" : "Efterlevande partner"
  }]
}

```
