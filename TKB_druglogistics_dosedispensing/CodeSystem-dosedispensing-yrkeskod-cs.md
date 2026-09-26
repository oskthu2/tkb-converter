# Yrkeskod - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Yrkeskod**

## CodeSystem: Yrkeskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-yrkeskod-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:YrkesKodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för YrkesKodEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Yrkeskod](ValueSet-dosedispensing-yrkeskod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-yrkeskod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-yrkeskod-cs",
  "version" : "1.1.0",
  "name" : "YrkesKodCS",
  "title" : "Yrkeskod",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för YrkesKodEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "LK",
    "display" : "Läkare"
  },
  {
    "code" : "TL",
    "display" : "Tandläkare"
  },
  {
    "code" : "BM",
    "display" : "Barnmorska"
  },
  {
    "code" : "SJ",
    "display" : "Sjuksköterska"
  },
  {
    "code" : "RS",
    "display" : "Röntgensjuksköterska"
  },
  {
    "code" : "TH",
    "display" : "Tandhygienist"
  }]
}

```
