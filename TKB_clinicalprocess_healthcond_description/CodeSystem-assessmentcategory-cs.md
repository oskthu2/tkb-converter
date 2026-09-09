# AssessmentCategory - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssessmentCategory**

## CodeSystem: AssessmentCategory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs | *Version*:3.0.5 |
| Active as of 2026-09-09 | *Computable Name*:AssessmentCategoryCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Bedömningskategori för funktionsstatus. Tillåtna värden är 'pad-pad' (PADL-bedömning) och 'fun-fun' (funktionsnedsättningsbedömning). Definierat i enum XSD v2.1 för domänen. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AssessmentCategory — ValueSet](ValueSet-assessmentcategory-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "assessmentcategory-cs",
  "url" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs",
  "version" : "3.0.5",
  "name" : "AssessmentCategoryCS",
  "title" : "AssessmentCategory",
  "status" : "active",
  "date" : "2026-09-09T16:47:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Bedömningskategori för funktionsstatus. Tillåtna värden är 'pad-pad' (PADL-bedömning) och 'fun-fun' (funktionsnedsättningsbedömning). Definierat i enum XSD v2.1 för domänen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "pad-pad",
    "display" : "pad-pad",
    "definition" : "PADL-bedömning"
  },
  {
    "code" : "fun-fun",
    "display" : "fun-fun",
    "definition" : "Funktionsnedsättningsbedömning"
  }]
}

```
