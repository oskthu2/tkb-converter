# Statuskod för relation - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Statuskod för relation**

## CodeSystem: Statuskod för relation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-relationshipstatus-cs | *Version*:2.0.0 |
| Active as of 2026-10-08 | *Computable Name*:RelationshipStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för RelationshipStatusType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Statuskod för relation](ValueSet-masterdata-citizen-citizen-relationshipstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-relationshipstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-relationshipstatus-cs",
  "version" : "2.0.0",
  "name" : "RelationshipStatusCS",
  "title" : "Statuskod för relation",
  "status" : "active",
  "date" : "2026-10-08T18:41:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för RelationshipStatusType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "NY",
    "display" : "Nyregistrerad"
  },
  {
    "code" : "PB",
    "display" : "Nyregistrerad pga personnummerbyte"
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
    "code" : "AV",
    "display" : "Avslutad pga avliden"
  },
  {
    "code" : "IV",
    "display" : "Avslutad pga invandring"
  },
  {
    "code" : "AN",
    "display" : "Annullerad"
  }]
}

```
