# DispensedDrugsConsentOrder — Samtyckesorder - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DispensedDrugsConsentOrder — Samtyckesorder**

## CodeSystem: DispensedDrugsConsentOrder — Samtyckesorder 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dispenseddrugsconsentorder | *Version*:2 |
| Active as of 2026-09-09 | *Computable Name*:DispensedDrugsConsentOrderCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av åtgärd för samtycke till uthämtade läkemedel. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DispensedDrugsConsentOrder — ValueSet](ValueSet-dispenseddrugsconsentorder-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dispenseddrugsconsentorder-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dispenseddrugsconsentorder",
  "version" : "2",
  "name" : "DispensedDrugsConsentOrderCS",
  "title" : "DispensedDrugsConsentOrder — Samtyckesorder",
  "status" : "active",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av åtgärd för samtycke till uthämtade läkemedel.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "CREATE",
    "display" : "CREATE",
    "definition" : "Skapa samtycke."
  },
  {
    "code" : "REVOKE",
    "display" : "REVOKE",
    "definition" : "Återkalla samtycke."
  }]
}

```
