# codeRequestConfirmationType - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **codeRequestConfirmationType**

## CodeSystem: codeRequestConfirmationType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/requestconfirmationtype-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:RequestConfirmationTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av remissbekräftelse (codes_2.2.xsd codeRequestConfirmationType_values). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [codeRequestConfirmationType](ValueSet-requestconfirmationtype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "requestconfirmationtype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/requestconfirmationtype-cs",
  "version" : "2.2.0",
  "name" : "RequestConfirmationTypeCS",
  "title" : "codeRequestConfirmationType",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av remissbekräftelse (codes_2.2.xsd codeRequestConfirmationType_values).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "BEK",
    "display" : "Bekräftelse"
  },
  {
    "code" : "VID",
    "display" : "Besked om vidareskickning"
  },
  {
    "code" : "KOM",
    "display" : "Kompletteringsbegäran"
  },
  {
    "code" : "AVB",
    "display" : "Avbruten remiss"
  },
  {
    "code" : "AVV",
    "display" : "Avvisad remiss"
  }]
}

```
