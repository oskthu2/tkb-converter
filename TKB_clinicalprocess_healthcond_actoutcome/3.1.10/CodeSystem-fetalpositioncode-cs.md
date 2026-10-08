# FetalPositionCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalPositionCode**

## CodeSystem: FetalPositionCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/fetalpositioncode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:FetalPositionCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Fosterläge (FetalPositionCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FetalPositionCode — ValueSet](ValueSet-fetalpositioncode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fetalpositioncode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/fetalpositioncode",
  "version" : "3.1.10",
  "name" : "FetalPositionCodeCS",
  "title" : "FetalPositionCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Fosterläge (FetalPositionCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "huvud"
  },
  {
    "code" : "1",
    "display" : "säte"
  },
  {
    "code" : "2",
    "display" : "snedläge"
  },
  {
    "code" : "3",
    "display" : "tvärläge"
  }]
}

```
