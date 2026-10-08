# DateTypeFormat - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DateTypeFormat**

## CodeSystem: DateTypeFormat 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/SPP-datetypeformat-cs | *Version*:5.1.0 |
| Active as of 2026-10-08 | *Computable Name*:DateTypeFormatCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för DateTypeFormatType i domänschemat. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DateTypeFormat](ValueSet-SPP-datetypeformat-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SPP-datetypeformat-cs",
  "url" : "https://fhir.inera.se/CodeSystem/SPP-datetypeformat-cs",
  "version" : "5.1.0",
  "name" : "DateTypeFormatCS",
  "title" : "DateTypeFormat",
  "status" : "active",
  "date" : "2026-10-08T18:52:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för DateTypeFormatType i domänschemat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "YYYY",
    "display" : "YYYY"
  },
  {
    "code" : "YYYY-MM",
    "display" : "YYYY-MM"
  },
  {
    "code" : "YYYY-MM-DD",
    "display" : "YYYY-MM-DD"
  }]
}

```
