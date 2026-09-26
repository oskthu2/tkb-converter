# Meddelandestatus - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Meddelandestatus**

## CodeSystem: Meddelandestatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/messagebox-messagestatus-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:MessageStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för MessageStatusType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Meddelandestatus](ValueSet-messagebox-messagestatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "messagebox-messagestatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/messagebox-messagestatus-cs",
  "version" : "1.0.0",
  "name" : "MessageStatusCS",
  "title" : "Meddelandestatus",
  "status" : "active",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för MessageStatusType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "RECEIVED",
    "display" : "RECEIVED"
  },
  {
    "code" : "RETRIEVED",
    "display" : "RETRIEVED"
  },
  {
    "code" : "DELETED",
    "display" : "DELETED"
  }]
}

```
