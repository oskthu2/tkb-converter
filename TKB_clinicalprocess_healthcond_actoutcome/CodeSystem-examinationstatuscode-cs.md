# ExaminationStatusCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExaminationStatusCode**

## CodeSystem: ExaminationStatusCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/examinationstatuscode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:ExaminationStatusCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för undersökningsstatus (ExaminationStatusCodeEnum). Används i GetImagingOutcome. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ExaminationStatusCode — ValueSet](ValueSet-examinationstatuscode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "examinationstatuscode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/examinationstatuscode",
  "version" : "4.2.2",
  "name" : "ExaminationStatusCodeCS",
  "title" : "ExaminationStatusCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för undersökningsstatus (ExaminationStatusCodeEnum). Används i GetImagingOutcome.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "Initierad",
    "display" : "Initierad",
    "definition" : "Undersökning initierad"
  },
  {
    "code" : "Planerad",
    "display" : "Planerad (bevakad)",
    "definition" : "Undersökning planerad"
  },
  {
    "code" : "Tidbokad",
    "display" : "Tidbokad",
    "definition" : "Undersökning tidbokad"
  },
  {
    "code" : "Uppskjuten",
    "display" : "Uppskjuten",
    "definition" : "Undersökning uppskjuten"
  },
  {
    "code" : "Annullerad",
    "display" : "Annullerad",
    "definition" : "Undersökning annullerad"
  },
  {
    "code" : "Pagaende",
    "display" : "Pågående",
    "definition" : "Undersökning pågående"
  },
  {
    "code" : "Avvakta",
    "display" : "Avvakta",
    "definition" : "Undersökning avvakta"
  },
  {
    "code" : "Avbruten",
    "display" : "Avbruten",
    "definition" : "Undersökning avbruten"
  },
  {
    "code" : "Avklarad",
    "display" : "Avklarad",
    "definition" : "Undersökning avklarad"
  },
  {
    "code" : "Inaktuell",
    "display" : "Inaktuell",
    "definition" : "Undersökning inaktuell"
  },
  {
    "code" : "Makulerad",
    "display" : "Makulerad",
    "definition" : "Undersökning makulerad"
  }]
}

```
