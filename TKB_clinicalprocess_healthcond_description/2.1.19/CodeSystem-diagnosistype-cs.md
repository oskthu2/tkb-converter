# DiagnosisType - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiagnosisType**

## CodeSystem: DiagnosisType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/diagnosistype-cs | *Version*:2.1.19 |
| Active as of 2026-10-08 | *Computable Name*:DiagnosisTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av diagnos (huvud- respektive bidiagnos) enligt DiagnosisTypeEnum i domänschemat 2.1. Används i typeOfDiagnosis i GetDiagnosis. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DiagnosisType — ValueSet](ValueSet-diagnosistype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "diagnosistype-cs",
  "url" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/diagnosistype-cs",
  "version" : "2.1.19",
  "name" : "DiagnosisTypeCS",
  "title" : "DiagnosisType",
  "status" : "active",
  "date" : "2026-10-08T18:09:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av diagnos (huvud- respektive bidiagnos) enligt DiagnosisTypeEnum i domänschemat 2.1. Används i typeOfDiagnosis i GetDiagnosis.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Huvuddiagnos",
    "display" : "Huvuddiagnos"
  },
  {
    "code" : "Bidiagnos",
    "display" : "Bidiagnos"
  }]
}

```
