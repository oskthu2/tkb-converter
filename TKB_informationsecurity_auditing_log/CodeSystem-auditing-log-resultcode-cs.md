# ResultCode - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/auditing-log-resultcode-cs | *Version*:2.0.8 |
| Active as of 2026-10-08 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode](ValueSet-auditing-log-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "auditing-log-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/auditing-log-resultcode-cs",
  "version" : "2.0.8",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-10-08T18:28:09+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "OK",
    "display" : "OK"
  },
  {
    "code" : "INFO",
    "display" : "INFO"
  },
  {
    "code" : "ERROR",
    "display" : "ERROR"
  },
  {
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR"
  },
  {
    "code" : "ACCESSDENIED",
    "display" : "ACCESSDENIED"
  },
  {
    "code" : "REPORT_ON_QUEUE",
    "display" : "REPORT_ON_QUEUE"
  },
  {
    "code" : "REPORT_IN_PROCESS",
    "display" : "REPORT_IN_PROCESS"
  },
  {
    "code" : "REPORT_NOT_FOUND",
    "display" : "REPORT_NOT_FOUND"
  },
  {
    "code" : "MAX_QUERY_RESULT_EXCEEDED",
    "display" : "MAX_QUERY_RESULT_EXCEEDED"
  }]
}

```
