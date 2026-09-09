# PersonQueueStatus - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PersonQueueStatus**

## CodeSystem: PersonQueueStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/personqueuestatus-cs | *Version*:1.0.0 |
| Active as of 2026-09-09 | *Computable Name*:PersonQueueStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för köstatus för en person, enligt xs:enumeration i crm_carelisting_1_0.xsd. Används i tjänstekontraktet GetPersonQueueStatus. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PersonQueueStatus — ValueSet](ValueSet-personqueuestatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "personqueuestatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/personqueuestatus-cs",
  "version" : "1.0.0",
  "name" : "PersonQueueStatusCS",
  "title" : "PersonQueueStatus",
  "status" : "active",
  "date" : "2026-09-09T16:48:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för köstatus för en person, enligt xs:enumeration i crm_carelisting_1_0.xsd.\nAnvänds i tjänstekontraktet GetPersonQueueStatus.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "inQueue",
    "display" : "I kö",
    "definition" : "Personen är i kö för listning."
  },
  {
    "code" : "notInQueue",
    "display" : "Inte i kö",
    "definition" : "Personen är inte i kö för listning."
  }]
}

```
