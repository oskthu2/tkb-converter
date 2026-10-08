# TimeStampTypeFormatEnum - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TimeStampTypeFormatEnum**

## CodeSystem: TimeStampTypeFormatEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/timestamptypeformat-cs | *Version*:1.2.3 |
| Active as of 2026-10-08 | *Computable Name*:TimeStampTypeFormatCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Precision för en tidpunkt med varierande precision (PartialTimeStampType.format). Källa: TimeStampTypeFormatEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TimeStampTypeFormatEnum — ValueSet](ValueSet-timestamptypeformat-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "timestamptypeformat-cs",
  "url" : "https://fhir.inera.se/CodeSystem/timestamptypeformat-cs",
  "version" : "1.2.3",
  "name" : "TimeStampTypeFormatCS",
  "title" : "TimeStampTypeFormatEnum",
  "status" : "active",
  "date" : "2026-10-08T18:07:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Precision för en tidpunkt med varierande precision (PartialTimeStampType.format). Källa: TimeStampTypeFormatEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "YYYY",
    "display" : "YYYY"
  },
  {
    "code" : "YYYYMM",
    "display" : "YYYYMM"
  },
  {
    "code" : "YYYYMMDD",
    "display" : "YYYYMMDD"
  },
  {
    "code" : "YYYYMMDDhh",
    "display" : "YYYYMMDDhh"
  },
  {
    "code" : "YYYYMMDDhhmm",
    "display" : "YYYYMMDDhhmm"
  },
  {
    "code" : "YYYYMMDDhhmmss",
    "display" : "YYYYMMDDhhmmss"
  }]
}

```
