# resultCodeEnum - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **resultCodeEnum**

## CodeSystem: resultCodeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.0.2 |
| Active as of 2026-09-26 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk resultCodeEnum enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Resultatkod för anropet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.0.2",
  "name" : "ResultCodeCS",
  "title" : "resultCodeEnum",
  "status" : "active",
  "date" : "2026-09-26T19:16:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk resultCodeEnum enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Resultatkod för anropet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Anropet lyckades."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Logiskt fel; beskrivande text anges i fältet comment."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Anropet lyckades med information; se fältet comment."
  }]
}

```
