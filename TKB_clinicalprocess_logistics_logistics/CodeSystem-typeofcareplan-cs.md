# TypeOfCarePlan - clinicalprocess: logistics: logistics v3.0.13

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfCarePlan**

## CodeSystem: TypeOfCarePlan 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofcareplan-cs | *Version*:3.0.13 |
| Active as of 2026-09-09 | *Computable Name*:TypeOfCarePlanCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av vård- och omsorgsplan enligt clinicalprocess:logistics:logistics v3.0. Definierad i clinicalprocess_logistics_logistics_enum_3.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfCarePlan — ValueSet](ValueSet-typeofcareplan-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofcareplan-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofcareplan-cs",
  "version" : "3.0.13",
  "name" : "TypeOfCarePlanCS",
  "title" : "TypeOfCarePlan",
  "status" : "active",
  "date" : "2026-09-09T16:48:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av vård- och omsorgsplan enligt clinicalprocess:logistics:logistics v3.0. Definierad i clinicalprocess_logistics_logistics_enum_3.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "SIP",
    "display" : "SIP",
    "definition" : "Samordnad individuell plan"
  },
  {
    "code" : "SPLPTLRV",
    "display" : "SPLPTLRV",
    "definition" : "Samordnad plan enligt LPT och LRV"
  },
  {
    "code" : "SPU",
    "display" : "SPU",
    "definition" : "Samordnad plan vid utskrivning"
  },
  {
    "code" : "VP",
    "display" : "VP",
    "definition" : "Vårdplan"
  },
  {
    "code" : "HP",
    "display" : "HP",
    "definition" : "Habiliteringsplan"
  },
  {
    "code" : "RP",
    "display" : "RP",
    "definition" : "Rehabiliteringsplan"
  },
  {
    "code" : "GP",
    "display" : "GP",
    "definition" : "Genomförandeplan"
  },
  {
    "code" : "SVP",
    "display" : "SVP",
    "definition" : "Standardiserad vårdplan"
  }]
}

```
