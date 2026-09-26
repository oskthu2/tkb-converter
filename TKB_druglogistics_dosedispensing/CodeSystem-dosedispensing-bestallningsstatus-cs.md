# Beställningsstatus - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beställningsstatus**

## CodeSystem: Beställningsstatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-bestallningsstatus-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:BestallningsStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för BestallningsStatusEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf) och releasenoteringarna 1.0.4 (kod 5). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Beställningsstatus](ValueSet-dosedispensing-bestallningsstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-bestallningsstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-bestallningsstatus-cs",
  "version" : "1.1.0",
  "name" : "BestallningsStatusCS",
  "title" : "Beställningsstatus",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för BestallningsStatusEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf) och releasenoteringarna 1.0.4 (kod 5).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "Mottagen"
  },
  {
    "code" : "2",
    "display" : "Avvisad"
  },
  {
    "code" : "3",
    "display" : "Expedierad"
  },
  {
    "code" : "4",
    "display" : "Avbeställd"
  },
  {
    "code" : "5",
    "display" : "Samtliga status"
  }]
}

```
