# ResultCodeEnum - followup: qualityregistry: nkrr v1.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCodeEnum**

## CodeSystem: ResultCodeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.2.2 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Resultatkoder (ResultCodeEnum) för tjänstedomänen followup:qualityregistry:nkrr. Används i svarsmeddelanden för att indikera utfall av tjänsteanrop. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCodeEnum — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.2.2",
  "name" : "ResultCodeCS",
  "title" : "ResultCodeEnum",
  "status" : "active",
  "date" : "2026-09-09T16:57:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Resultatkoder (ResultCodeEnum) för tjänstedomänen followup:qualityregistry:nkrr. Används i svarsmeddelanden för att indikera utfall av tjänsteanrop.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Transaktionen/uppslaget har utförts enligt uppdraget utan fel."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Transaktionen/uppslaget har utförts men det finns information att förmedla. En beskrivande text kan anges i resultText."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Transaktionen/uppslaget har INTE kunnat utföras p.g.a. ett logiskt fel. Felet beskrivs i resultText."
  }]
}

```
