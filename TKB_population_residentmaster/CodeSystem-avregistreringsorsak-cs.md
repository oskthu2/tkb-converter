# Avregistreringsorsak - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Avregistreringsorsak**

## CodeSystem: Avregistreringsorsak 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/avregistreringsorsak-cs | *Version*:1.2 |
| Active as of 2026-09-17 | *Computable Name*:AvregistreringsorsakCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för avregistreringsorsak enligt RIV-TA population:residentmaster (AvregistreringsorsakKodTYPE). Utgår i ResidentType version 2 till förmån för AvregistreringsorsakKomplettCS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Avregistreringsorsak — ValueSet](ValueSet-avregistreringsorsak-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "avregistreringsorsak-cs",
  "url" : "https://fhir.inera.se/CodeSystem/avregistreringsorsak-cs",
  "version" : "1.2",
  "name" : "AvregistreringsorsakCS",
  "title" : "Avregistreringsorsak",
  "status" : "active",
  "date" : "2026-09-17T11:18:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för avregistreringsorsak enligt RIV-TA population:residentmaster (AvregistreringsorsakKodTYPE). Utgår i ResidentType version 2 till förmån för AvregistreringsorsakKomplettCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "AV",
    "display" : "AV",
    "definition" : "Avliden"
  },
  {
    "code" : "GN",
    "display" : "GN",
    "definition" : "Gammalt nummer"
  },
  {
    "code" : "OO",
    "display" : "OO",
    "definition" : "Övrig orsak"
  }]
}

```
