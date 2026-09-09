# Resultatkod - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultkod-cs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:ResultkodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodsystem för resultat av tjänsteanrop (ResultType) enligt clinicalprocess:healthcond:certificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod — ValueSet](ValueSet-resultkod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultkod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultkod-cs",
  "version" : "4.1-RC1",
  "name" : "ResultkodCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodsystem för resultat av tjänsteanrop (ResultType) enligt clinicalprocess:healthcond:certificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Anropet lyckades"
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Anropet lyckades men med informationsmeddelande (t.ex. dubletthantering)"
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Anropet misslyckades"
  }]
}

```
