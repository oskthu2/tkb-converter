# Statuskod för medborgarskap - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statuskod för medborgarskap**

## CodeSystem: Statuskod för medborgarskap 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-citizenshipstatus-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:CitizenshipStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för CitizenshipStatusType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Statuskod för medborgarskap](ValueSet-masterdata-citizen-citizen-citizenshipstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-citizenshipstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-citizenshipstatus-cs",
  "version" : "2.0.0",
  "name" : "CitizenshipStatusCS",
  "title" : "Statuskod för medborgarskap",
  "status" : "active",
  "date" : "2026-09-28T09:13:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för CitizenshipStatusType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "NY",
    "display" : "Nyregistrerad"
  },
  {
    "code" : "RD",
    "display" : "Rättad"
  },
  {
    "code" : "AS",
    "display" : "Avslutad"
  },
  {
    "code" : "AN",
    "display" : "Annullerad"
  }]
}

```
