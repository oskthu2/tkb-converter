# CheckStatus - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckStatus**

## CodeSystem: CheckStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/authorization-blocking-checkstatus-cs | *Version*:4.0.4 |
| Active as of 2026-10-08 | *Computable Name*:CheckStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för CheckStatusType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CheckStatus](ValueSet-authorization-blocking-checkstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "authorization-blocking-checkstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/authorization-blocking-checkstatus-cs",
  "version" : "4.0.4",
  "name" : "CheckStatusCS",
  "title" : "CheckStatus",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för CheckStatusType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK"
  },
  {
    "code" : "BLOCKED",
    "display" : "BLOCKED"
  },
  {
    "code" : "VALIDATIONERROR",
    "display" : "VALIDATIONERROR"
  }]
}

```
