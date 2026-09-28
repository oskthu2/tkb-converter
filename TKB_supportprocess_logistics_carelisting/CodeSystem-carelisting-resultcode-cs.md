# ResultCode - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/carelisting-resultcode-cs | *Version*:2.1.0 |
| Active as of 2026-09-28 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnum i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode](ValueSet-carelisting-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "carelisting-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/carelisting-resultcode-cs",
  "version" : "2.1.0",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-28T09:25:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeEnum i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "OK",
    "display" : "OK"
  },
  {
    "code" : "ERROR",
    "display" : "ERROR"
  },
  {
    "code" : "INFO",
    "display" : "INFO"
  },
  {
    "code" : "ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED",
    "display" : "ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED"
  },
  {
    "code" : "ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT",
    "display" : "ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT"
  },
  {
    "code" : "ERROR_GUARDIAN_CONSENT_NEEDED",
    "display" : "ERROR_GUARDIAN_CONSENT_NEEDED"
  },
  {
    "code" : "ERROR_AGE_LIMIT",
    "display" : "ERROR_AGE_LIMIT"
  }]
}

```
