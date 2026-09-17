# Relationsstatus - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Relationsstatus**

## CodeSystem: Relationsstatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/relationstatus-cs | *Version*:1.2 |
| Active as of 2026-09-17 | *Computable Name*:RelationStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för relationsstatus enligt RIV-TA population:residentmaster (RelationStatusTYPE). Aviseras endast vid regelbunden ändringspost. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Relationsstatus — ValueSet](ValueSet-relationstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "relationstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/relationstatus-cs",
  "version" : "1.2",
  "name" : "RelationStatusCS",
  "title" : "Relationsstatus",
  "status" : "active",
  "date" : "2026-09-17T11:18:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för relationsstatus enligt RIV-TA population:residentmaster (RelationStatusTYPE). Aviseras endast vid regelbunden ändringspost.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "NY",
    "display" : "NY",
    "definition" : "Nyregistrerad"
  },
  {
    "code" : "PB",
    "display" : "PB",
    "definition" : "Nyregistrerad pga personnummerbyte"
  },
  {
    "code" : "RD",
    "display" : "RD",
    "definition" : "Rättad"
  },
  {
    "code" : "AS",
    "display" : "AS",
    "definition" : "Avslutad"
  },
  {
    "code" : "AV",
    "display" : "AV",
    "definition" : "Avslutad pga avliden"
  },
  {
    "code" : "IV",
    "display" : "IV",
    "definition" : "Avslutad pga invandring"
  },
  {
    "code" : "AN",
    "display" : "AN",
    "definition" : "Annullerad"
  }]
}

```
