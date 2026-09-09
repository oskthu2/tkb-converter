# BlockType - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BlockType**

## CodeSystem: BlockType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/blocktype-cs | *Version*:3.2.2 |
| Active as of 2026-09-09 | *Computable Name*:BlockTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av spärr enligt urn:riv:ehr:blocking:2. Anger om spärren gäller inom en vårdenhet (inre) eller inom hela vårdgivaren (yttre). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BlockType — ValueSet](ValueSet-blocktype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "blocktype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/blocktype-cs",
  "version" : "3.2.2",
  "name" : "BlockTypeCS",
  "title" : "BlockType",
  "status" : "active",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av spärr enligt urn:riv:ehr:blocking:2. Anger om spärren gäller inom en vårdenhet (inre) eller inom hela vårdgivaren (yttre).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Inner",
    "display" : "Inre spärr",
    "definition" : "Representerar en inre spärr (inom vårdenhet). Gäller all personal hos en specifik vårdenhet."
  },
  {
    "code" : "Outer",
    "display" : "Yttre spärr",
    "definition" : "Representerar en yttre spärr (inom vårdgivare). Gäller all personal hos en specifik vårdgivare."
  }]
}

```
