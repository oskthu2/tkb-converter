# FetalPositionCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalPositionCode**

## CodeSystem: FetalPositionCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/fetalpositioncode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:FetalPositionCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för fosterläge (FetalPositionCodeEnum). Används i GetMaternityMedicalHistory. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fetalpositioncode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/fetalpositioncode",
  "version" : "4.2.2",
  "name" : "FetalPositionCodeCS",
  "title" : "FetalPositionCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för fosterläge (FetalPositionCodeEnum). Används i GetMaternityMedicalHistory.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "Huvudläge",
    "definition" : "Fostret ligger med huvudet nedåt"
  },
  {
    "code" : "1",
    "display" : "Sätesläge",
    "definition" : "Fostret ligger med sätet nedåt"
  },
  {
    "code" : "2",
    "display" : "Snedläge",
    "definition" : "Fostret ligger snett"
  },
  {
    "code" : "3",
    "display" : "Tvärläge",
    "definition" : "Fostret ligger tvärs"
  }]
}

```
