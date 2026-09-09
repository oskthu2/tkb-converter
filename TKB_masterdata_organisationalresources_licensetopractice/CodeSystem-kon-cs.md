# Kön - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kön**

## CodeSystem: Kön 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/kon-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:KonCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för kön. OID: 1.2.752.129.2.2.1.1. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kön — ValueSet](ValueSet-kon-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "kon-cs",
  "url" : "https://fhir.inera.se/CodeSystem/kon-cs",
  "version" : "2.0.0",
  "name" : "KonCS",
  "title" : "Kön",
  "status" : "active",
  "date" : "2026-09-09T17:04:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för kön. OID: 1.2.752.129.2.2.1.1.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "0",
    "definition" : "Okänt"
  },
  {
    "code" : "1",
    "display" : "1",
    "definition" : "Man"
  },
  {
    "code" : "2",
    "display" : "2",
    "definition" : "Kvinna"
  },
  {
    "code" : "9",
    "display" : "9",
    "definition" : "Ej tillämpligt"
  }]
}

```
