# Datumformat (noggrannhet) - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Datumformat (noggrannhet)**

## CodeSystem: Datumformat (noggrannhet) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-datetypeformat-cs | *Version*:2.0.0 |
| Active as of 2026-10-08 | *Computable Name*:DateTypeFormatCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för DateTypeFormatType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Datumformat (noggrannhet)](ValueSet-masterdata-citizen-citizen-datetypeformat-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-datetypeformat-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-datetypeformat-cs",
  "version" : "2.0.0",
  "name" : "DateTypeFormatCS",
  "title" : "Datumformat (noggrannhet)",
  "status" : "active",
  "date" : "2026-10-08T18:41:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för DateTypeFormatType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "YYYY",
    "display" : "Noggrannhet: År"
  },
  {
    "code" : "YYYY-MM",
    "display" : "Noggrannhet: År och månad"
  },
  {
    "code" : "YYYY-MM-DD",
    "display" : "Noggrannhet: År, månad, dag"
  }]
}

```
