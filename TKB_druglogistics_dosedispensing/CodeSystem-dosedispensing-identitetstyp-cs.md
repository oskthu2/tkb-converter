# Identitetstyp - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Identitetstyp**

## CodeSystem: Identitetstyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-identitetstyp-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:IdentitetstypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för IdentitetstypEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Identitetstyp](ValueSet-dosedispensing-identitetstyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-identitetstyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-identitetstyp-cs",
  "version" : "1.1.0",
  "name" : "IdentitetstypCS",
  "title" : "Identitetstyp",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för IdentitetstypEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "P",
    "display" : "Personnummer"
  },
  {
    "code" : "R",
    "display" : "Reservnummer",
    "definition" : "Används ej"
  },
  {
    "code" : "S",
    "display" : "Samordningsnummer",
    "definition" : "Används ej"
  }]
}

```
