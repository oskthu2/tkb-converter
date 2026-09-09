# PublishStatus - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PublishStatus**

## CodeSystem: PublishStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/publishstatus-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:PublishStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för mallens publiceringsstatus (KV Publicerings status) enligt infrastructure:supportservices:forminteraction v2.0. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PublishStatus — ValueSet](ValueSet-publishstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "publishstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/publishstatus-cs",
  "version" : "2.0.0",
  "name" : "PublishStatusCS",
  "title" : "PublishStatus",
  "status" : "active",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för mallens publiceringsstatus (KV Publicerings status) enligt infrastructure:supportservices:forminteraction v2.0.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "PUBLISHED",
    "display" : "Publicerad",
    "definition" : "Mallen är publicerad och tillgänglig"
  },
  {
    "code" : "DRAFT",
    "display" : "Utkast",
    "definition" : "Mallen är ett utkast"
  },
  {
    "code" : "RETIRED",
    "display" : "Utgått",
    "definition" : "Mallen har utgått"
  }]
}

```
