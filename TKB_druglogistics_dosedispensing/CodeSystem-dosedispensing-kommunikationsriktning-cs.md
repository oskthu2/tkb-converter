# Kommunikationsriktning - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kommunikationsriktning**

## CodeSystem: Kommunikationsriktning 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-kommunikationsriktning-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:KommunikationsriktningCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för KommunikationsriktningEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kommunikationsriktning](ValueSet-dosedispensing-kommunikationsriktning-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-kommunikationsriktning-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-kommunikationsriktning-cs",
  "version" : "1.1.0",
  "name" : "KommunikationsriktningCS",
  "title" : "Kommunikationsriktning",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för KommunikationsriktningEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Till dosapotek"
  },
  {
    "code" : "2",
    "display" : "Från dosapotek"
  }]
}

```
