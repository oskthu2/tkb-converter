# SecurityLevel - eservicesupply: eoffering v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SecurityLevel**

## CodeSystem: SecurityLevel 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/securitylevel-cs | *Version*:1.0.0 |
| Active as of 2026-09-09 | *Computable Name*:SecurityLevelCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för autentiseringsnivåer (Assurance Level, ISO/IEC 29115) i tjänstekontraktet GetAvailableEServices. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SecurityLevel — ValueSet](ValueSet-securitylevel-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "securitylevel-cs",
  "url" : "https://fhir.inera.se/CodeSystem/securitylevel-cs",
  "version" : "1.0.0",
  "name" : "SecurityLevelCS",
  "title" : "SecurityLevel",
  "status" : "active",
  "date" : "2026-09-09T16:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för autentiseringsnivåer (Assurance Level, ISO/IEC 29115) i tjänstekontraktet GetAvailableEServices.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "AL1",
    "display" : "AL1",
    "definition" : "Tillitsnivå 1"
  },
  {
    "code" : "AL2",
    "display" : "AL2",
    "definition" : "Tillitsnivå 2"
  },
  {
    "code" : "AL3",
    "display" : "AL3",
    "definition" : "Tillitsnivå 3 — Mjuka certifikat, stark autentisering med engångskod"
  },
  {
    "code" : "AL4",
    "display" : "AL4",
    "definition" : "Tillitsnivå 4 — Hårda certifikat"
  }]
}

```
