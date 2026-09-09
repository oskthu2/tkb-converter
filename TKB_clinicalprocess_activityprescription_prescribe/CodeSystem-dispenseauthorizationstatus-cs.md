# DispenseAuthorizationStatus — Status på expedieringsunderlag - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DispenseAuthorizationStatus — Status på expedieringsunderlag**

## CodeSystem: DispenseAuthorizationStatus — Status på expedieringsunderlag 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dispenseauthorizationstatus | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:DispenseAuthorizationStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för filterval av expedieringsunderlag baserat på kopplat/okopplat status. Används i GetMedicationDispenseAuthorizations. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DispenseAuthorizationStatus — ValueSet](ValueSet-dispenseauthorizationstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dispenseauthorizationstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dispenseauthorizationstatus",
  "version" : "2",
  "name" : "DispenseAuthorizationStatusCS",
  "title" : "DispenseAuthorizationStatus — Status på expedieringsunderlag",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för filterval av expedieringsunderlag baserat på kopplat/okopplat status. Används i GetMedicationDispenseAuthorizations.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "ATTACHED",
    "display" : "ATTACHED",
    "definition" : "Be om endast kopplade (ATTACHED) expedieringsunderlag."
  },
  {
    "code" : "NOT_ATTACHED",
    "display" : "NOT_ATTACHED",
    "definition" : "Be om endast okopplade (NOT_ATTACHED) expedieringsunderlag."
  },
  {
    "code" : "ALL",
    "display" : "ALL",
    "definition" : "Be om både kopplade och okopplade."
  }]
}

```
