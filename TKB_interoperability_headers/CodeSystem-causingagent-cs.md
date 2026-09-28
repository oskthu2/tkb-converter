# CausingAgent - interoperability: headers — Gemensamma huvudelement v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CausingAgent**

## CodeSystem: CausingAgent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/causingagent-cs | *Version*:1.1 |
| Active as of 2026-09-28 | *Computable Name*:CausingAgentCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk CausingAgentEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Identifierar den komponent som felade vid en misslyckad synkronisering. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CausingAgent — ValueSet](ValueSet-causingagent-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "causingagent-cs",
  "url" : "https://fhir.inera.se/CodeSystem/causingagent-cs",
  "version" : "1.1",
  "name" : "CausingAgentCS",
  "title" : "CausingAgent",
  "status" : "active",
  "date" : "2026-09-28T09:11:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk CausingAgentEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Identifierar den komponent som felade vid en misslyckad synkronisering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "service_catalog",
    "display" : "service_catalog",
    "definition" : "Tjänstekatalogen"
  },
  {
    "code" : "virtualization_platform",
    "display" : "virtualization_platform",
    "definition" : "Virtualiseringsplattformen (tjänsteplattformen)"
  },
  {
    "code" : "service_producer",
    "display" : "service_producer",
    "definition" : "Tjänsteproducenten (källsystemet)"
  },
  {
    "code" : "engagement_index",
    "display" : "engagement_index",
    "definition" : "Engagemangsindex"
  },
  {
    "code" : "other",
    "display" : "other",
    "definition" : "Annan komponent"
  }]
}

```
