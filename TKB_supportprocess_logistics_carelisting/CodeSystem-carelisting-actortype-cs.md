# ActorType - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActorType**

## CodeSystem: ActorType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/carelisting-actortype-cs | *Version*:2.1.0 |
| Active as of 2026-10-08 | *Computable Name*:ActorTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ActorTypeEnum i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActorType](ValueSet-carelisting-actortype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "carelisting-actortype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/carelisting-actortype-cs",
  "version" : "2.1.0",
  "name" : "ActorTypeCS",
  "title" : "ActorType",
  "status" : "active",
  "date" : "2026-10-08T18:55:13+00:00",
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
  "count" : 6,
  "concept" : [{
    "code" : "CITIZEN",
    "display" : "CITIZEN"
  },
  {
    "code" : "GUARDIAN",
    "display" : "GUARDIAN"
  },
  {
    "code" : "REGION",
    "display" : "REGION"
  },
  {
    "code" : "PRIVATE_CAREGIVER",
    "display" : "PRIVATE_CAREGIVER"
  },
  {
    "code" : "SELF_OWNED_CAREGIVER",
    "display" : "SELF_OWNED_CAREGIVER"
  },
  {
    "code" : "HEALTHCARE_ADVISER",
    "display" : "HEALTHCARE_ADVISER"
  }]
}

```
