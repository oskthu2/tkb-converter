# ExaminationStatusCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExaminationStatusCode**

## CodeSystem: ExaminationStatusCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/examinationstatuscode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:ExaminationStatusCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Undersökningsstatus (ExaminationStatusCodeEnum). Används i GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ExaminationStatusCode — ValueSet](ValueSet-examinationstatuscode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "examinationstatuscode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/examinationstatuscode",
  "version" : "3.1.10",
  "name" : "ExaminationStatusCodeCS",
  "title" : "ExaminationStatusCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Undersökningsstatus (ExaminationStatusCodeEnum). Används i GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "Initierad",
    "display" : "Initierad"
  },
  {
    "code" : "Planerad",
    "display" : "Planerad (bevakad)"
  },
  {
    "code" : "Tidbokad",
    "display" : "Tidbokad"
  },
  {
    "code" : "Uppskjuten",
    "display" : "Uppskjuten"
  },
  {
    "code" : "Annullerad",
    "display" : "Annullerad"
  },
  {
    "code" : "Pågående",
    "display" : "Pågående"
  },
  {
    "code" : "Avvakta",
    "display" : "Avvakta"
  },
  {
    "code" : "Avbruten",
    "display" : "Avbruten"
  },
  {
    "code" : "Avklarad",
    "display" : "Avklarad"
  },
  {
    "code" : "Inaktuell",
    "display" : "Inaktuell"
  },
  {
    "code" : "Makulerad",
    "display" : "Makulerad"
  }]
}

```
