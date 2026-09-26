# atkomsttyp - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **atkomsttyp**

## CodeSystem: atkomsttyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/atkomsttyp-cs | *Version*:1.0.2 |
| Active as of 2026-09-26 | *Computable Name*:AtkomsttypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk atkomsttyp enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Treställig kod för typ av åtkomst till Läkemedelsförteckningen. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Atkomsttyp — ValueSet](ValueSet-atkomsttyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "atkomsttyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/atkomsttyp-cs",
  "version" : "1.0.2",
  "name" : "AtkomsttypCS",
  "title" : "atkomsttyp",
  "status" : "active",
  "date" : "2026-09-26T19:16:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk atkomsttyp enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Treställig kod för typ av åtkomst till Läkemedelsförteckningen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "ENG",
    "display" : "ENG",
    "definition" : "Engångssamtycke"
  },
  {
    "code" : "SAM",
    "display" : "SAM",
    "definition" : "Samtycke (tillsvidaresamtycke registrerat i LF Samtyckestjänst)"
  },
  {
    "code" : "NOD",
    "display" : "NOD",
    "definition" : "Nödåtkomst (nödsituation)"
  }]
}

```
