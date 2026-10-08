# ActorType - financial: patientfees: exemption v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActorType**

## CodeSystem: ActorType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/patientfees-exemption-actortype-cs | *Version*:1.0.0 |
| Active as of 2026-10-08 | *Computable Name*:ActorTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ActorTypeEnum i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActorType](ValueSet-patientfees-exemption-actortype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patientfees-exemption-actortype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/patientfees-exemption-actortype-cs",
  "version" : "1.0.0",
  "name" : "ActorTypeCS",
  "title" : "ActorType",
  "status" : "active",
  "date" : "2026-10-08T18:24:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ActorTypeEnum i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "CITIZEN",
    "display" : "CITIZEN"
  },
  {
    "code" : "GUARDIAN",
    "display" : "GUARDIAN"
  },
  {
    "code" : "CAREGIVER",
    "display" : "CAREGIVER"
  }]
}

```
