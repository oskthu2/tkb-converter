# ResultCode - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.0.2 |
| Active as of 2026-09-26 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Resultatkod för registrerings-/raderingsoperationer i Infektionsverktyget. Anger utfallet av anropet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.0.2",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-26T19:40:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Resultatkod för registrerings-/raderingsoperationer i Infektionsverktyget. Anger utfallet av anropet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Registrering/radering genomförd."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Fel vid registrering/radering. Felet beskrivs i elementet comment."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Information finns om registreringen/raderingen. Informationen beskrivs i elementet comment."
  }]
}

```
