# Avregistreringsorsak (komplett) - population: residentmaster v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Avregistreringsorsak (komplett)**

## CodeSystem: Avregistreringsorsak (komplett) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/avregistreringsorsakkomplett-cs | *Version*:1.2.0 |
| Active as of 2026-10-08 | *Computable Name*:AvregistreringsorsakKomplettCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för avregistreringsorsak enligt RIV-TA population:residentmaster (AvregistreringsorsakKodKomplettTYPE). Ersätter AvregistreringsorsakCS i ResidentType version 2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Avregistreringsorsak (komplett) — ValueSet](ValueSet-avregistreringsorsakkomplett-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "avregistreringsorsakkomplett-cs",
  "url" : "https://fhir.inera.se/CodeSystem/avregistreringsorsakkomplett-cs",
  "version" : "1.2.0",
  "name" : "AvregistreringsorsakKomplettCS",
  "title" : "Avregistreringsorsak (komplett)",
  "status" : "active",
  "date" : "2026-10-08T18:44:31+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för avregistreringsorsak enligt RIV-TA population:residentmaster (AvregistreringsorsakKodKomplettTYPE). Ersätter AvregistreringsorsakCS i ResidentType version 2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "AV",
    "display" : "AV",
    "definition" : "Avliden"
  },
  {
    "code" : "UV",
    "display" : "UV",
    "definition" : "Utvandrad"
  },
  {
    "code" : "GN",
    "display" : "GN",
    "definition" : "Gammalt personnummer"
  },
  {
    "code" : "AN",
    "display" : "AN",
    "definition" : "Annan anledning"
  },
  {
    "code" : "AS",
    "display" : "AS",
    "definition" : "Tekniskt avregistrerad"
  },
  {
    "code" : "GS",
    "display" : "GS",
    "definition" : "Gammalt samordningsnummer"
  },
  {
    "code" : "OB",
    "display" : "OB",
    "definition" : "Obefintlig"
  },
  {
    "code" : "TA",
    "display" : "TA",
    "definition" : "Tekniskt avregistrerad"
  }]
}

```
