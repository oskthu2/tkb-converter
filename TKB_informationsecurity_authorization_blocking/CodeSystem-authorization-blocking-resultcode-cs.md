# ResultCode - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/authorization-blocking-resultcode-cs | *Version*:4.0.4 |
| Active as of 2026-09-28 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode](ValueSet-authorization-blocking-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "authorization-blocking-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/authorization-blocking-resultcode-cs",
  "version" : "4.0.4",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-28T09:02:10+00:00",
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
  "count" : 8,
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
    "code" : "VALIDATIONERROR",
    "display" : "VALIDATIONERROR"
  },
  {
    "code" : "ACCESSDENIED",
    "display" : "ACCESSDENIED"
  },
  {
    "code" : "NOTFOUND",
    "display" : "NOTFOUND"
  },
  {
    "code" : "ALREADYEXISTS",
    "display" : "ALREADYEXISTS"
  },
  {
    "code" : "INVALIDSTATE",
    "display" : "INVALIDSTATE"
  }]
}

```
