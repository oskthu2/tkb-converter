# Meddelandestatus - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Meddelandestatus**

## CodeSystem: Meddelandestatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-meddelandestatus-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:MeddelandeStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för MeddelandeStatusEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Meddelandestatus](ValueSet-dosedispensing-meddelandestatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-meddelandestatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-meddelandestatus-cs",
  "version" : "1.1.0",
  "name" : "MeddelandeStatusCS",
  "title" : "Meddelandestatus",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för MeddelandeStatusEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "L",
    "display" : "Läst"
  },
  {
    "code" : "O",
    "display" : "Oläst"
  },
  {
    "code" : "B",
    "display" : "Borttagen"
  },
  {
    "code" : "BLO",
    "display" : "Borttagen/Läst/Oläst"
  },
  {
    "code" : "LO",
    "display" : "Läst/Oläst"
  },
  {
    "code" : "BL",
    "display" : "Borttagen/Läst"
  }]
}

```
