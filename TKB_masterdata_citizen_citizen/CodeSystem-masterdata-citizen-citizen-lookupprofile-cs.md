# Profil - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil**

## CodeSystem: Profil 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-lookupprofile-cs | *Version*:2.0.0 |
| Active as of 2026-10-08 | *Computable Name*:LookupProfileCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för LookupProfileType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Profil](ValueSet-masterdata-citizen-citizen-lookupprofile-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-lookupprofile-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-lookupprofile-cs",
  "version" : "2.0.0",
  "name" : "LookupProfileCS",
  "title" : "Profil",
  "status" : "active",
  "date" : "2026-10-08T18:41:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för LookupProfileType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "P1",
    "display" : "Profil med enbart namn"
  },
  {
    "code" : "P2",
    "display" : "Profil i enlighet med kontrakt 1.1"
  },
  {
    "code" : "P3",
    "display" : "Profil med komplett data exklusive historik"
  },
  {
    "code" : "P4",
    "display" : "Profil med komplett data inklusive historik"
  },
  {
    "code" : "P5",
    "display" : "Reserverad för framtida bruk"
  },
  {
    "code" : "P6",
    "display" : "Reserverad för framtida bruk"
  },
  {
    "code" : "P7",
    "display" : "Reserverad för framtida bruk"
  },
  {
    "code" : "P8",
    "display" : "Reserverad för framtida bruk"
  },
  {
    "code" : "P9",
    "display" : "Reserverad för framtida bruk"
  },
  {
    "code" : "P10",
    "display" : "Reserverad för framtida bruk"
  }]
}

```
