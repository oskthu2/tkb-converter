# ErrorCodeEnum - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ErrorCodeEnum**

## CodeSystem: ErrorCodeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/errorcode-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:ErrorCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Felkod när resultCode är ERROR (clinicalprocess_activity_request_2.2.xsd ErrorCodeEnum). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ErrorCodeEnum](ValueSet-errorcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "errorcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/errorcode-cs",
  "version" : "2.2.0",
  "name" : "ErrorCodeCS",
  "title" : "ErrorCodeEnum",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Felkod när resultCode är ERROR (clinicalprocess_activity_request_2.2.xsd ErrorCodeEnum).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR",
    "definition" : "Valideringsfel i begäran."
  },
  {
    "code" : "APPLICATION_ERROR",
    "display" : "APPLICATION_ERROR",
    "definition" : "Logiskt fel i producentens applikation."
  }]
}

```
