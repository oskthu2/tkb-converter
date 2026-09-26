# RequirementLevelEnum - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RequirementLevelEnum**

## CodeSystem: RequirementLevelEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/requirementlevel-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:RequirementLevelCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kravnivå: Desired = önskemål, Only = krav. Enligt supportprocess_personalresources_interpretation_1.0.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RequirementLevelEnum](ValueSet-requirementlevel-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "requirementlevel-cs",
  "url" : "https://fhir.inera.se/CodeSystem/requirementlevel-cs",
  "version" : "1.0.0",
  "name" : "RequirementLevelCS",
  "title" : "RequirementLevelEnum",
  "status" : "active",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kravnivå: Desired = önskemål, Only = krav. Enligt supportprocess_personalresources_interpretation_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Desired",
    "display" : "Desired"
  },
  {
    "code" : "Only",
    "display" : "Only"
  }]
}

```
