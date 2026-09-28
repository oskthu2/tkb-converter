# ActorType - interoperability: headers — Gemensamma huvudelement v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActorType**

## CodeSystem: ActorType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/actortype-cs | *Version*:1.1 |
| Active as of 2026-09-28 | *Computable Name*:ActorTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk ActorTypeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Anger vilken typ av aktör som anges i Actor. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActorType — ValueSet](ValueSet-actortype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "actortype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/actortype-cs",
  "version" : "1.1",
  "name" : "ActorTypeCS",
  "title" : "ActorType",
  "status" : "active",
  "date" : "2026-09-28T09:11:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk ActorTypeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Anger vilken typ av aktör som anges i Actor.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "subject_of_care",
    "display" : "subject_of_care",
    "definition" : "Invånaren/patienten själv"
  },
  {
    "code" : "subject_of_care_agent",
    "display" : "subject_of_care_agent",
    "definition" : "Ombud för invånaren/patienten"
  }]
}

```
