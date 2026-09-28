# Relationstyp - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Relationstyp**

## CodeSystem: Relationstyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-relationshiptype-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:RelationshipTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för RelationshipTypeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Relationstyp](ValueSet-masterdata-citizen-citizen-relationshiptype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-relationshiptype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-relationshiptype-cs",
  "version" : "2.0.0",
  "name" : "RelationshipTypeCS",
  "title" : "Relationstyp",
  "status" : "active",
  "date" : "2026-09-28T09:13:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för RelationshipTypeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "B",
    "display" : "Barn"
  },
  {
    "code" : "MO",
    "display" : "Moder"
  },
  {
    "code" : "FA",
    "display" : "Fader"
  },
  {
    "code" : "F",
    "display" : "Förälder"
  },
  {
    "code" : "V",
    "display" : "Vårdnadshavare"
  },
  {
    "code" : "VF",
    "display" : "Vårdnadshavare för"
  },
  {
    "code" : "M",
    "display" : "Make/maka"
  },
  {
    "code" : "P",
    "display" : "Partner"
  }]
}

```
