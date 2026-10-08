# AssessmentCategory - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssessmentCategory**

## CodeSystem: AssessmentCategory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs | *Version*:2.1.19 |
| Active as of 2026-10-08 | *Computable Name*:AssessmentCategoryCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Bedömningskategori för funktionsstatus enligt AssessmentCategoryEnum i domänschemat 2.1. Värdet ska stämma överens med categorization i engagemangsposten (TKB avsnitt 4.1). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AssessmentCategory — ValueSet](ValueSet-assessmentcategory-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "assessmentcategory-cs",
  "url" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs",
  "version" : "2.1.19",
  "name" : "AssessmentCategoryCS",
  "title" : "AssessmentCategory",
  "status" : "active",
  "date" : "2026-10-08T18:09:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Bedömningskategori för funktionsstatus enligt AssessmentCategoryEnum i domänschemat 2.1. Värdet ska stämma överens med categorization i engagemangsposten (TKB avsnitt 4.1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "pad-pad",
    "display" : "PADL-bedömning"
  },
  {
    "code" : "fun-fun",
    "display" : "Funktionsnedsättningsbedömningar"
  }]
}

```
