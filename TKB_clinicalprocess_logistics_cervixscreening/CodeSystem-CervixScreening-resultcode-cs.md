# ResultCode - clinicalprocess: logistics: cervixscreening v1.0.0-rc4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/CervixScreening-resultcode-cs | *Version*:1.0.0-rc4 |
| Active as of 2026-09-28 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnum i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode](ValueSet-CervixScreening-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CervixScreening-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/CervixScreening-resultcode-cs",
  "version" : "1.0.0-rc4",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-28T08:47:27+00:00",
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
  "count" : 3,
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
  }]
}

```
