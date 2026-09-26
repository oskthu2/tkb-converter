# DoctorsGlobalEnum - clinicalprocess: healthcond: rheuma — Reumatismdata v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DoctorsGlobalEnum**

## CodeSystem: DoctorsGlobalEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/physiciansglobal-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:PhysiciansGlobalCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Läkarens globala bedömning av sjukdomsaktivitet enligt DoctorsGlobalEnum i clinicalprocess_healthcond_rheuma_enum_1.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DoctorsGlobalEnum](ValueSet-physiciansglobal-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "physiciansglobal-cs",
  "url" : "https://fhir.inera.se/CodeSystem/physiciansglobal-cs",
  "version" : "1.0.0",
  "name" : "PhysiciansGlobalCS",
  "title" : "DoctorsGlobalEnum",
  "status" : "active",
  "date" : "2026-09-26T19:19:32+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Läkarens globala bedömning av sjukdomsaktivitet enligt DoctorsGlobalEnum i clinicalprocess_healthcond_rheuma_enum_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "none",
    "display" : "Ingen"
  },
  {
    "code" : "low",
    "display" : "Låg"
  },
  {
    "code" : "moderate",
    "display" : "Måttlig"
  },
  {
    "code" : "high",
    "display" : "Hög"
  },
  {
    "code" : "maximal",
    "display" : "Maximal"
  }]
}

```
