# TelTypeEnum - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TelTypeEnum**

## CodeSystem: TelTypeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/teltype-cs | *Version*:1.2.3 |
| Active as of 2026-10-08 | *Computable Name*:TelTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av elektronisk adress (TelType.use). Källa: TelTypeEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TelTypeEnum — ValueSet](ValueSet-teltype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "teltype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/teltype-cs",
  "version" : "1.2.3",
  "name" : "TelTypeCS",
  "title" : "TelTypeEnum",
  "status" : "active",
  "date" : "2026-10-08T18:07:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av elektronisk adress (TelType.use). Källa: TelTypeEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "voice",
    "display" : "Nummer för att föra ett röstsamtal"
  },
  {
    "code" : "fax",
    "display" : "Faxnummer"
  },
  {
    "code" : "data",
    "display" : "E-post adress"
  },
  {
    "code" : "sms",
    "display" : "Nummer för mobila textmeddelanden"
  }]
}

```
