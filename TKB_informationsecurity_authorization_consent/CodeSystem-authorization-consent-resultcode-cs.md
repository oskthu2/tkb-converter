# ResultCode - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/authorization-consent-resultcode-cs | *Version*:2.0.4 |
| Active as of 2026-10-08 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode](ValueSet-authorization-consent-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "authorization-consent-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/authorization-consent-resultcode-cs",
  "version" : "2.0.4",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-10-08T18:29:57+00:00",
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
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR"
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
