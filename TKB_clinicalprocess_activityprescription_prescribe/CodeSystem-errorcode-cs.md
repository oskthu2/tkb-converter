# ErrorCode — Felkod - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ErrorCode — Felkod**

## CodeSystem: ErrorCode — Felkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/errorcode | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:ErrorCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för felkod i svar (ResultType.errorCode). Används i samtliga kontrakt. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ErrorCode — ValueSet](ValueSet-errorcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "errorcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/errorcode",
  "version" : "2",
  "name" : "ErrorCodeCS",
  "title" : "ErrorCode — Felkod",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för felkod i svar (ResultType.errorCode). Används i samtliga kontrakt.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR",
    "definition" : "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
  },
  {
    "code" : "ACCESS_DENIED",
    "display" : "ACCESS_DENIED",
    "definition" : "Åtkomst nekad."
  },
  {
    "code" : "NOT_FOUND",
    "display" : "NOT_FOUND",
    "definition" : "Efterfrågad resurs hittades inte."
  },
  {
    "code" : "ALREADY_EXISTS",
    "display" : "ALREADY_EXISTS",
    "definition" : "Resursen finns redan."
  },
  {
    "code" : "INVALID_STATE",
    "display" : "INVALID_STATE",
    "definition" : "Resursen är i ett ogiltigt tillstånd för begärd åtgärd."
  },
  {
    "code" : "MAXIMUM_REQUEST_REACHED",
    "display" : "MAXIMUM_REQUEST_REACHED",
    "definition" : "Varningsnivå uppnådd för maximalt antal anrop."
  }]
}

```
