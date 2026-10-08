# CareContactStatus - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CareContactStatus**

## CodeSystem: CareContactStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/carecontactstatus-cs | *Version*:2.0.7 |
| Active as of 2026-10-08 | *Computable Name*:CareContactStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Status på vårdkontakten (careContactStatus i GetCareContacts 2.0), enligt kodverk ur NPÖ RIV-spec 2.2. Uppräkningen CareContactStatusEnum i clinicalprocess_logistics_logistics_enum_2.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CareContactStatus — ValueSet](ValueSet-carecontactstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "carecontactstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/carecontactstatus-cs",
  "version" : "2.0.7",
  "name" : "CareContactStatusCS",
  "title" : "CareContactStatus",
  "status" : "active",
  "date" : "2026-10-08T18:12:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Status på vårdkontakten (careContactStatus i GetCareContacts 2.0), enligt kodverk ur NPÖ RIV-spec 2.2. Uppräkningen CareContactStatusEnum i clinicalprocess_logistics_logistics_enum_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "Ej påbörjad"
  },
  {
    "code" : "2",
    "display" : "Inställd"
  },
  {
    "code" : "3",
    "display" : "Pågående"
  },
  {
    "code" : "4",
    "display" : "Avbruten"
  },
  {
    "code" : "5",
    "display" : "Avslutad"
  }]
}

```
