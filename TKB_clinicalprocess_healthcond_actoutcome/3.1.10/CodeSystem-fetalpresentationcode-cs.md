# FetalPresentationCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalPresentationCode**

## CodeSystem: FetalPresentationCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/fetalpresentationcode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:FetalPresentationCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Föregående fosterdel (FetalPresentationCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FetalPresentationCode — ValueSet](ValueSet-fetalpresentationcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fetalpresentationcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/fetalpresentationcode",
  "version" : "3.1.10",
  "name" : "FetalPresentationCodeCS",
  "title" : "FetalPresentationCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Föregående fosterdel (FetalPresentationCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "rörligt (mobile)"
  },
  {
    "code" : "1",
    "display" : "ruckbart (movable)"
  },
  {
    "code" : "2",
    "display" : "fix (fixed)"
  },
  {
    "code" : "3",
    "display" : "tvärläge (endast i schemat; definieras inte i TKB:n)"
  }]
}

```
