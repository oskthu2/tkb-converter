# Referenstyp - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Referenstyp**

## CodeSystem: Referenstyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/referenstyp-cs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:ReferenstypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av referens i tjänstekontraktet RegisterMedicalCertificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Referenstyp — ValueSet](ValueSet-referenstyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "referenstyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/referenstyp-cs",
  "version" : "3.1.0",
  "name" : "ReferenstypCS",
  "title" : "Referenstyp",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av referens i tjänstekontraktet RegisterMedicalCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Journaluppgifter",
    "display" : "Journaluppgifter",
    "definition" : "Fält 4 - intyget baseras på – journaluppgift"
  },
  {
    "code" : "Annat",
    "display" : "Annat",
    "definition" : "Fält 4 - intyget baseras på – annat"
  }]
}

```
