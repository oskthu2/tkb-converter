# ResultCode — Svarskod - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode — Svarskod**

## CodeSystem: ResultCode — Svarskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för resultatkod i svar (ResultType). Används i samtliga kontrakt. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode",
  "version" : "2",
  "name" : "ResultCodeCS",
  "title" : "ResultCode — Svarskod",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för resultatkod i svar (ResultType). Används i samtliga kontrakt.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Begäran utförd utan fel."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Begäran utförd, informationsmeddelande returneras."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Begäran misslyckades, felkod i errorCode."
  }]
}

```
