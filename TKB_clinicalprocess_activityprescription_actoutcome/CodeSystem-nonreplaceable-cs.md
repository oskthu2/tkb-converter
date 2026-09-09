# NonReplaceable - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NonReplaceable**

## CodeSystem: NonReplaceable 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/nonreplaceable-actoutcome | *Version*:2.2.1 |
| Active as of 2026-09-09 | *Computable Name*:NonReplaceableCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för aktör som har angett att ett läkemedel inte är utbytbart i GetMedicationHistory (DispensationAuthorizationType). 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nonreplaceable-cs",
  "url" : "https://fhir.inera.se/CodeSystem/nonreplaceable-actoutcome",
  "version" : "2.2.1",
  "name" : "NonReplaceableCS",
  "title" : "NonReplaceable",
  "status" : "active",
  "date" : "2026-09-09T16:42:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för aktör som har angett att ett läkemedel inte är utbytbart i GetMedicationHistory (DispensationAuthorizationType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Prescriber",
    "display" : "Förskrivare",
    "definition" : "Förskrivaren har angett att läkemedlet inte är utbytbart"
  },
  {
    "code" : "Patient",
    "display" : "Patient",
    "definition" : "Patienten har begärt att läkemedlet inte ska bytas ut"
  }]
}

```
