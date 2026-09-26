# Meddelandeprioritet - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Meddelandeprioritet**

## CodeSystem: Meddelandeprioritet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-meddelandeprioritet-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:MeddelandePrioritetCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för MeddelandePrioritetEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Meddelandeprioritet](ValueSet-dosedispensing-meddelandeprioritet-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-meddelandeprioritet-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-meddelandeprioritet-cs",
  "version" : "1.1.0",
  "name" : "MeddelandePrioritetCS",
  "title" : "Meddelandeprioritet",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för MeddelandePrioritetEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "L",
    "display" : "Låg"
  },
  {
    "code" : "N",
    "display" : "Normal"
  },
  {
    "code" : "H",
    "display" : "Hög"
  }]
}

```
