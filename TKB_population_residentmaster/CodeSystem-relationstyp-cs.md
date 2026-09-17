# Relationstyp - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Relationstyp**

## CodeSystem: Relationstyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/relationstyp-cs | *Version*:1.2 |
| Active as of 2026-09-17 | *Computable Name*:RelationstypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av relation mellan personer enligt RIV-TA population:residentmaster (RelationstypTYPE). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Relationstyp — ValueSet](ValueSet-relationstyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "relationstyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/relationstyp-cs",
  "version" : "1.2",
  "name" : "RelationstypCS",
  "title" : "Relationstyp",
  "status" : "active",
  "date" : "2026-09-17T11:18:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av relation mellan personer enligt RIV-TA population:residentmaster (RelationstypTYPE).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "B",
    "display" : "B",
    "definition" : "Barn"
  },
  {
    "code" : "MO",
    "display" : "MO",
    "definition" : "Moder"
  },
  {
    "code" : "FA",
    "display" : "FA",
    "definition" : "Fader"
  },
  {
    "code" : "F",
    "display" : "F",
    "definition" : "Förälder"
  },
  {
    "code" : "V",
    "display" : "V",
    "definition" : "Vårdnadshavare"
  },
  {
    "code" : "VF",
    "display" : "VF",
    "definition" : "Vårdnadshavare för"
  },
  {
    "code" : "M",
    "display" : "M",
    "definition" : "Make/maka"
  },
  {
    "code" : "P",
    "display" : "P",
    "definition" : "Partner"
  }]
}

```
