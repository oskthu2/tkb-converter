# TypeOfLeaveCode - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfLeaveCode**

## CodeSystem: TypeOfLeaveCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofleavecode | *Version*:4.2.2 |
| Active as of 2026-09-09 | *Computable Name*:TypeOfLeaveCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofleavecode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofleavecode",
  "version" : "4.2.2",
  "name" : "TypeOfLeaveCodeCS",
  "title" : "TypeOfLeaveCode",
  "status" : "active",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "0",
    "display" : "Sjukskrivning",
    "definition" : "Sjukskrivning under graviditet"
  },
  {
    "code" : "1",
    "display" : "Havandekapsledighet",
    "definition" : "Havandekapsledighet"
  },
  {
    "code" : "2",
    "display" : "Föräldrarledighet",
    "definition" : "Föräldrarledighet"
  }]
}

```
