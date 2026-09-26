# Meddelandetyp - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Meddelandetyp**

## CodeSystem: Meddelandetyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/dosedispensing-meddelandetyp-cs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:MeddelandetypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för MeddelandetypEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Meddelandetyp](ValueSet-dosedispensing-meddelandetyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dosedispensing-meddelandetyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/dosedispensing-meddelandetyp-cs",
  "version" : "1.1.0",
  "name" : "MeddelandetypCS",
  "title" : "Meddelandetyp",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för MeddelandetypEnum i domänschemat. Visningstexter ur Pascal – Objekt och felhantering (Objekt_och_felhantering.pdf).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "OB",
    "display" : "Ordinationsbundet",
    "definition" : "Används ej"
  },
  {
    "code" : "PB",
    "display" : "Personbundet"
  },
  {
    "code" : "FR",
    "display" : "Fristående"
  },
  {
    "code" : "MB",
    "display" : "Meddelandebundet"
  },
  {
    "code" : "VG",
    "display" : "VG"
  }]
}

```
