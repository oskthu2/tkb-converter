# Resultatkod - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-resultatkod-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:ResultatkodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultatkodEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod](ValueSet-dosedispensing-resultatkod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-resultatkod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-resultatkod-cs",
  "version" : "1.1.0",
  "name" : "ResultatkodCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultatkodEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Information"
  },
  {
    "code" : "2",
    "display" : "Varning"
  },
  {
    "code" : "3",
    "display" : "Fel"
  }]
}

```
