# Kv status vårdbegäran - crm: requeststatus v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kv status vårdbegäran**

## CodeSystem: Kv status vårdbegäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/kvstatusvardbegaran-cs | *Version*:2.0.1 |
| Active as of 2026-09-09 | *Computable Name*:KvStatusVardbegaranCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk Kv status vårdbegäran — anger status för en remiss/vårdbegäran. OID: 1.2.752.129.2.2.2.43. Kodverket kan komma att kompletteras utan versionsuppdatering av tjänstekontraktet. Konsumenter MÅSTE vara förberedda på nya koder. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kv status vårdbegäran — ValueSet](ValueSet-kvstatusvardbegaran-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "kvstatusvardbegaran-cs",
  "url" : "https://fhir.inera.se/CodeSystem/kvstatusvardbegaran-cs",
  "version" : "2.0.1",
  "name" : "KvStatusVardbegaranCS",
  "title" : "Kv status vårdbegäran",
  "status" : "active",
  "date" : "2026-09-09T16:49:32+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk Kv status vårdbegäran — anger status för en remiss/vårdbegäran. OID: 1.2.752.129.2.2.2.43.\nKodverket kan komma att kompletteras utan versionsuppdatering av tjänstekontraktet.\nKonsumenter MÅSTE vara förberedda på nya koder.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "1",
    "display" : "Skickad",
    "definition" : "Remissen har skickats"
  },
  {
    "code" : "7",
    "display" : "Svar mottaget",
    "definition" : "Svar på remissen har mottagits"
  },
  {
    "code" : "11",
    "display" : "Makulerad",
    "definition" : "Remissen har makulerats"
  }]
}

```
