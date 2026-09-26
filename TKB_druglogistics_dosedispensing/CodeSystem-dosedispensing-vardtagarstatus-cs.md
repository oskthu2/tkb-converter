# Vårdtagarstatus - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vårdtagarstatus**

## CodeSystem: Vårdtagarstatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-vardtagarstatus-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:VardtagarStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för VardtagarStatusEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Vårdtagarstatus](ValueSet-dosedispensing-vardtagarstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-vardtagarstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-vardtagarstatus-cs",
  "version" : "1.1.0",
  "name" : "VardtagarStatusCS",
  "title" : "Vårdtagarstatus",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för VardtagarStatusEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "Aktiv"
  },
  {
    "code" : "2",
    "display" : "Vilande"
  },
  {
    "code" : "3",
    "display" : "Tillfällig adressändring"
  },
  {
    "code" : "4",
    "display" : "Avförd"
  },
  {
    "code" : "5",
    "display" : "Avliden"
  },
  {
    "code" : "6",
    "display" : "Ej registrerad"
  }]
}

```
