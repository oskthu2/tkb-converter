# CareContactCode - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CareContactCode**

## CodeSystem: CareContactCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/carecontactcode-cs | *Version*:2.0.7 |
| Active as of 2026-10-08 | *Computable Name*:CareContactCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av vårdkontakt (careContactCode i GetCareContacts 2.0). Uppräkningen CareContactCodeEnum i clinicalprocess_logistics_logistics_enum_2.0.xsd. Utelämnat värde betyder att typen är okänd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CareContactCode — ValueSet](ValueSet-carecontactcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "carecontactcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/carecontactcode-cs",
  "version" : "2.0.7",
  "name" : "CareContactCodeCS",
  "title" : "CareContactCode",
  "status" : "active",
  "date" : "2026-10-08T18:12:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av vårdkontakt (careContactCode i GetCareContacts 2.0). Uppräkningen CareContactCodeEnum i clinicalprocess_logistics_logistics_enum_2.0.xsd. Utelämnat värde betyder att typen är okänd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "Besök"
  },
  {
    "code" : "2",
    "display" : "Telefon"
  },
  {
    "code" : "3",
    "display" : "Vårdtillfälle"
  },
  {
    "code" : "4",
    "display" : "Dagsjukvård"
  },
  {
    "code" : "5",
    "display" : "Annan"
  }]
}

```
