# DiagnosisType - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiagnosisType**

## CodeSystem: DiagnosisType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/diagnosistype-cs | *Version*:3.0.5 |
| Active as of 2026-09-09 | *Computable Name*:DiagnosisTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av diagnos (huvud- respektive bidiagnos). Definierat i XSD för domänen. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DiagnosisType — ValueSet](ValueSet-diagnosistype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "diagnosistype-cs",
  "url" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/diagnosistype-cs",
  "version" : "3.0.5",
  "name" : "DiagnosisTypeCS",
  "title" : "DiagnosisType",
  "status" : "active",
  "date" : "2026-09-09T16:47:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av diagnos (huvud- respektive bidiagnos). Definierat i XSD för domänen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Huvuddiagnos",
    "display" : "Huvuddiagnos",
    "definition" : "Huvuddiagnos"
  },
  {
    "code" : "Bidiagnos",
    "display" : "Bidiagnos",
    "definition" : "Bidiagnos"
  }]
}

```
