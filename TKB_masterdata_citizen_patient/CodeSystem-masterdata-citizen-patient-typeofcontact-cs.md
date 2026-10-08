# Typ av kontakt - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av kontakt**

## CodeSystem: Typ av kontakt 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcontact-cs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:TypeOfContactCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfContactEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekomkontakttyp_47_v1.1 (1.2.752.129.2.2.1.29). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av kontakt](ValueSet-masterdata-citizen-patient-typeofcontact-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeofcontact-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcontact-cs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "TypeOfContactCS",
  "title" : "Typ av kontakt",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfContactEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekomkontakttyp_47_v1.1 (1.2.752.129.2.2.1.29).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "privat"
  },
  {
    "code" : "2",
    "display" : "arbete"
  }]
}

```
