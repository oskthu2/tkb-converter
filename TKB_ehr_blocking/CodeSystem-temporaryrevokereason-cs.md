# TemporaryRevokeReason - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TemporaryRevokeReason**

## CodeSystem: TemporaryRevokeReason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/temporaryrevokereason-cs | *Version*:3.2.2 |
| Active as of 2026-09-09 | *Computable Name*:TemporaryRevokeReasonCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Orsak till tillfällig hävning av spärr enligt urn:riv:ehr:blocking:2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TemporaryRevokeReason — ValueSet](ValueSet-temporaryrevokereason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "temporaryrevokereason-cs",
  "url" : "https://fhir.inera.se/CodeSystem/temporaryrevokereason-cs",
  "version" : "3.2.2",
  "name" : "TemporaryRevokeReasonCS",
  "title" : "TemporaryRevokeReason",
  "status" : "active",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Orsak till tillfällig hävning av spärr enligt urn:riv:ehr:blocking:2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "PatientsConsent",
    "display" : "Patientens samtycke",
    "definition" : "Patienten har givit sitt samtycke till en tillfällig hävning."
  },
  {
    "code" : "Emergency",
    "display" : "Nödsituation",
    "definition" : "Nödsituation föreligger. Patientens samtycke för en tillfällig hävning kunde ej inhämtas."
  }]
}

```
