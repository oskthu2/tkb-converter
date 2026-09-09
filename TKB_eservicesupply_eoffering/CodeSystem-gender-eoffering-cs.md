# Gender (eOffering) - eservicesupply: eoffering v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gender (eOffering)**

## CodeSystem: Gender (eOffering) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/gender-eoffering-cs | *Version*:1.0.0 |
| Active as of 2026-09-09 | *Computable Name*:GenderEofferingCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för kön i tjänstekontraktet GetAvailableEServices. Anger om en e-tjänst riktar sig till ett visst kön. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Gender (eOffering) — ValueSet](ValueSet-gender-eoffering-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gender-eoffering-cs",
  "url" : "https://fhir.inera.se/CodeSystem/gender-eoffering-cs",
  "version" : "1.0.0",
  "name" : "GenderEofferingCS",
  "title" : "Gender (eOffering)",
  "status" : "active",
  "date" : "2026-09-09T16:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för kön i tjänstekontraktet GetAvailableEServices. Anger om en e-tjänst riktar sig till ett visst kön.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "1",
    "definition" : "Man"
  },
  {
    "code" : "2",
    "display" : "2",
    "definition" : "Kvinna"
  }]
}

```
