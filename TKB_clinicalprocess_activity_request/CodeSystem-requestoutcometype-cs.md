# codeRequestOutcomeType - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **codeRequestOutcomeType**

## CodeSystem: codeRequestOutcomeType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/requestoutcometype-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:RequestOutcomeTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av remissvar (codes_2.2.xsd codeRequestOutcomeType_values). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [codeRequestOutcomeType](ValueSet-requestoutcometype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "requestoutcometype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/requestoutcometype-cs",
  "version" : "2.2.0",
  "name" : "RequestOutcomeTypeCS",
  "title" : "codeRequestOutcomeType",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av remissvar (codes_2.2.xsd codeRequestOutcomeType_values).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "DSV",
    "display" : "Delsvar"
  },
  {
    "code" : "PSV",
    "display" : "Preliminärt svar"
  },
  {
    "code" : "SSV",
    "display" : "Slutsvar"
  }]
}

```
