# TemporaryRevokeReason - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TemporaryRevokeReason**

## CodeSystem: TemporaryRevokeReason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/authorization-blocking-temporaryrevokereason-cs | *Version*:4.0.4 |
| Active as of 2026-10-08 | *Computable Name*:TemporaryRevokeReasonCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TemporaryRevokeReasonType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TemporaryRevokeReason](ValueSet-authorization-blocking-temporaryrevokereason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "authorization-blocking-temporaryrevokereason-cs",
  "url" : "https://fhir.inera.se/CodeSystem/authorization-blocking-temporaryrevokereason-cs",
  "version" : "4.0.4",
  "name" : "TemporaryRevokeReasonCS",
  "title" : "TemporaryRevokeReason",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TemporaryRevokeReasonType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "PatientsConsent",
    "display" : "PatientsConsent"
  },
  {
    "code" : "Emergency",
    "display" : "Emergency"
  }]
}

```
