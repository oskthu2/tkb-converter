# TypeOfResultCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfResultCode**

## CodeSystem: TypeOfResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofresultcode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:TypeOfResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av svar (TypeOfResultCodeEnum). Används i GetLaboratoryOrderOutcome och GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfResultCode — ValueSet](ValueSet-typeofresultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofresultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofresultcode",
  "version" : "3.1.10",
  "name" : "TypeOfResultCodeCS",
  "title" : "TypeOfResultCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av svar (TypeOfResultCodeEnum). Används i GetLaboratoryOrderOutcome och GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "PREL",
    "display" : "Preliminärsvar"
  },
  {
    "code" : "DEF",
    "display" : "Definitivsvar"
  },
  {
    "code" : "TILL",
    "display" : "Tilläggssvar"
  }]
}

```
