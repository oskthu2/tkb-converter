# codeForTelecomType - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **codeForTelecomType**

## CodeSystem: codeForTelecomType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/telecomtype-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:TelecomTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av telefonnummer (codes_2.2.xsd codeForTelecomType_values). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [codeForTelecomType](ValueSet-telecomtype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "telecomtype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/telecomtype-cs",
  "version" : "2.2.0",
  "name" : "TelecomTypeCS",
  "title" : "codeForTelecomType",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av telefonnummer (codes_2.2.xsd codeForTelecomType_values).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "H",
    "display" : "Hemtelefon"
  },
  {
    "code" : "MC",
    "display" : "Mobil"
  }]
}

```
