# codeVersionReason - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **codeVersionReason**

## CodeSystem: codeVersionReason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/versionreason-cs | *Version*:2.2.0 |
| Active as of 2026-09-26 | *Computable Name*:VersionReasonCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Versionsorsak enligt Kv e-remiss versionsorsak (codes_2.2.xsd codeVersionReason_values). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [codeVersionReason](ValueSet-versionreason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "versionreason-cs",
  "url" : "https://fhir.inera.se/CodeSystem/versionreason-cs",
  "version" : "2.2.0",
  "name" : "VersionReasonCS",
  "title" : "codeVersionReason",
  "status" : "active",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Versionsorsak enligt Kv e-remiss versionsorsak (codes_2.2.xsd codeVersionReason_values).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "NR",
    "display" : "Ny remiss"
  },
  {
    "code" : "AR",
    "display" : "Ändrad remiss"
  },
  {
    "code" : "VR",
    "display" : "Vidareskickad remiss"
  },
  {
    "code" : "AB",
    "display" : "Ändrat betalningsansvar"
  }]
}

```
