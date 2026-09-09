# Part - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Part**

## CodeSystem: Part 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/part-cs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:PartCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodsystem för parter i intygshanteringsprocessen enligt clinicalprocess:healthcond:certificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Part — ValueSet](ValueSet-part-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "part-cs",
  "url" : "https://fhir.inera.se/CodeSystem/part-cs",
  "version" : "4.1-RC1",
  "name" : "PartCS",
  "title" : "Part",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodsystem för parter i intygshanteringsprocessen enligt clinicalprocess:healthcond:certificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "FKASSA",
    "display" : "FKASSA",
    "definition" : "Försäkringskassan"
  },
  {
    "code" : "HSVARD",
    "display" : "HSVARD",
    "definition" : "Hälso- och sjukvård"
  },
  {
    "code" : "INVANA",
    "display" : "INVANA",
    "definition" : "Invånare (patient)"
  },
  {
    "code" : "ARBGIVARE",
    "display" : "ARBGIVARE",
    "definition" : "Arbetsgivare"
  },
  {
    "code" : "TRANSP",
    "display" : "TRANSP",
    "definition" : "Transportstyrelsen"
  }]
}

```
