# TypeOfLeaveCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfLeaveCode**

## CodeSystem: TypeOfLeaveCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofleavecode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:TypeOfLeaveCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfLeaveCode — ValueSet](ValueSet-typeofleavecode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofleavecode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofleavecode",
  "version" : "3.1.10",
  "name" : "TypeOfLeaveCodeCS",
  "title" : "TypeOfLeaveCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "0",
    "display" : "Sjukskrivning"
  },
  {
    "code" : "1",
    "display" : "Havandekapsledighet"
  },
  {
    "code" : "2",
    "display" : "Föräldrarledighet"
  }]
}

```
