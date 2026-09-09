# ResultCode - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.0.1 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Svarskoder för samtycketjänstens operationer. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.0.1",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Svarskoder för samtycketjänstens operationer.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Transaktionen har utförts enligt uppdraget."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Transaktionen har utförts men med meddelande till konsumenten."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel."
  },
  {
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR",
    "definition" : "En eller flera inparametrar innehåller felaktiga värden."
  },
  {
    "code" : "ACCESSDENIED",
    "display" : "ACCESSDENIED",
    "definition" : "Behörighet saknas för att utföra begärd tjänst."
  },
  {
    "code" : "NOTFOUND",
    "display" : "NOTFOUND",
    "definition" : "Angiven artifakt finns ej."
  },
  {
    "code" : "ALREADYEXISTS",
    "display" : "ALREADYEXISTS",
    "definition" : "Angiven artifakt finns redan."
  },
  {
    "code" : "INVALIDSTATE",
    "display" : "INVALIDSTATE",
    "definition" : "Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd."
  }]
}

```
