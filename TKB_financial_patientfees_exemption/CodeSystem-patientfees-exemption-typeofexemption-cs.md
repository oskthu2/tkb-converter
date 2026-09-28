# TypeOfExemption - financial: patientfees: exemption v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfExemption**

## CodeSystem: TypeOfExemption 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/patientfees-exemption-typeofexemption-cs | *Version*:1.0.0 |
| Active as of 2026-09-28 | *Computable Name*:TypeOfExemptionCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfExemptionEnum i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfExemption](ValueSet-patientfees-exemption-typeofexemption-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patientfees-exemption-typeofexemption-cs",
  "url" : "https://fhir.inera.se/CodeSystem/patientfees-exemption-typeofexemption-cs",
  "version" : "1.0.0",
  "name" : "TypeOfExemptionCS",
  "title" : "TypeOfExemption",
  "status" : "active",
  "date" : "2026-09-28T08:58:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfExemptionEnum i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "CARE_VISIT",
    "display" : "CARE_VISIT"
  },
  {
    "code" : "TECHNICAL_AID",
    "display" : "TECHNICAL_AID"
  },
  {
    "code" : "TRANSPORTATION",
    "display" : "TRANSPORTATION"
  }]
}

```
