# Ämneskod - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ämneskod**

## CodeSystem: Ämneskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/amneskod-cs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:AmneskodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodsystem för ämnen i ärendekommunikation enligt clinicalprocess:healthcond:certificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Ämneskod — ValueSet](ValueSet-amneskod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "amneskod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/amneskod-cs",
  "version" : "4.1-RC1",
  "name" : "AmneskodCS",
  "title" : "Ämneskod",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodsystem för ämnen i ärendekommunikation enligt clinicalprocess:healthcond:certificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "KOMPLT",
    "display" : "KOMPLT",
    "definition" : "Komplettering — begäran om komplettering av ett intyg"
  },
  {
    "code" : "FRAGE",
    "display" : "FRAGE",
    "definition" : "Fråga — allmän fråga om ett intyg"
  },
  {
    "code" : "PAMINN",
    "display" : "PAMINN",
    "definition" : "Påminnelse — påminnelse om obesvarad fråga"
  },
  {
    "code" : "MAKULERING",
    "display" : "MAKULERING",
    "definition" : "Makulering — information om makulerat intyg"
  },
  {
    "code" : "NYFRAGA",
    "display" : "NYFRAGA",
    "definition" : "Ny fråga"
  },
  {
    "code" : "OVRIGT",
    "display" : "OVRIGT",
    "definition" : "Övrigt"
  }]
}

```
