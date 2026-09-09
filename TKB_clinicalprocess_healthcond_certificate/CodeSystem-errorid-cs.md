# Fel-ID - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fel-ID**

## CodeSystem: Fel-ID 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/errorid-cs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:ErrorIdCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodsystem för felkoder i ResultType.errorId enligt clinicalprocess:healthcond:certificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Fel-ID — ValueSet](ValueSet-errorid-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "errorid-cs",
  "url" : "https://fhir.inera.se/CodeSystem/errorid-cs",
  "version" : "4.1-RC1",
  "name" : "ErrorIdCS",
  "title" : "Fel-ID",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodsystem för felkoder i ResultType.errorId enligt clinicalprocess:healthcond:certificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR",
    "definition" : "Valideringsfel — indata uppfyller inte krav"
  },
  {
    "code" : "APPLICATION_ERROR",
    "display" : "APPLICATION_ERROR",
    "definition" : "Applikationsfel — fel i tjänsteproducenten"
  },
  {
    "code" : "TECHNICAL_ERROR",
    "display" : "TECHNICAL_ERROR",
    "definition" : "Tekniskt fel"
  },
  {
    "code" : "REVOKED",
    "display" : "REVOKED",
    "definition" : "Intyget är makulerat"
  },
  {
    "code" : "NOT_FOUND",
    "display" : "NOT_FOUND",
    "definition" : "Efterfrågad resurs hittades inte"
  }]
}

```
