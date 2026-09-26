# Beställningsurval - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beställningsurval**

## CodeSystem: Beställningsurval 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-bestallningsurval-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:BestallningsurvalCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för BestallningsurvalEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Beställningsurval](ValueSet-dosedispensing-bestallningsurval-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-bestallningsurval-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-bestallningsurval-cs",
  "version" : "1.1.0",
  "name" : "BestallningsurvalCS",
  "title" : "Beställningsurval",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för BestallningsurvalEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "PU",
    "display" : "Personurval",
    "definition" : "Endast en"
  },
  {
    "code" : "DM",
    "display" : "Dosmottagare",
    "definition" : "En eller flera"
  },
  {
    "code" : "BU",
    "display" : "Beställningsidentitet",
    "definition" : "En eller flera"
  },
  {
    "code" : "VG",
    "display" : "Vårdgivare",
    "definition" : "Endast en"
  }]
}

```
