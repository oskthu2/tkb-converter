# ResultCodeEnum - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCodeEnum**

## CodeSystem: ResultCodeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Resultatkod för anropet (clinicalprocess_activity_request_2.2.xsd ResultCodeEnum). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCodeEnum](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "2.2.0",
  "name" : "ResultCodeCS",
  "title" : "ResultCodeEnum",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Resultatkod för anropet (clinicalprocess_activity_request_2.2.xsd ResultCodeEnum).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Begäran gick bra."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Begäran gick bra, med information i message."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Begäran misslyckades; se errorCode."
  }]
}

```
