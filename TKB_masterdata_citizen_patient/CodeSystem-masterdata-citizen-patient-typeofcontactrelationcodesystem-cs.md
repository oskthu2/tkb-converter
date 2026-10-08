# Kodverk för typ av kontaktrelation - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kodverk för typ av kontaktrelation**

## CodeSystem: Kodverk för typ av kontaktrelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcontactrelationcodesystem-cs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:TypeOfContactRelationCodeSystemCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfContactRelationCodeSystemEnum i domänschemat. Visningstexter ur domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kodverk för typ av kontaktrelation](ValueSet-masterdata-citizen-patient-typeofcontactrelationcodesystem-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeofcontactrelationcodesystem-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcontactrelationcodesystem-cs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "TypeOfContactRelationCodeSystemCS",
  "title" : "Kodverk för typ av kontaktrelation",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfContactRelationCodeSystemEnum i domänschemat. Visningstexter ur domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1.2.752.129.2.2.1.24",
    "display" : "Släktrelation"
  },
  {
    "code" : "1.2.752.129.2.2.1.8",
    "display" : "Närståenderelation"
  },
  {
    "code" : "1.2.752.129.2.2.1.23",
    "display" : "Företrädare"
  }]
}

```
