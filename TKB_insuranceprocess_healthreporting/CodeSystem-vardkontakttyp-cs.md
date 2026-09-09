# Vardkontakttyp - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vardkontakttyp**

## CodeSystem: Vardkontakttyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/vardkontakttyp-cs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:VardkontakttypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av vårdkontakt i tjänstekontraktet RegisterMedicalCertificate. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Vardkontakttyp — ValueSet](ValueSet-vardkontakttyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "vardkontakttyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/vardkontakttyp-cs",
  "version" : "3.1.0",
  "name" : "VardkontakttypCS",
  "title" : "Vardkontakttyp",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av vårdkontakt i tjänstekontraktet RegisterMedicalCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "MIN_UNDERSOKNING_AV_PATIENTEN",
    "display" : "Min undersökning av patienten",
    "definition" : "Fält 4 - intyget baseras på – undersökning"
  },
  {
    "code" : "MIN_TELEFONKONTAKT_MED_PATIENTEN",
    "display" : "Min telefonkontakt med patienten",
    "definition" : "Fält 4 - intyget baseras på – telefonkontakt"
  }]
}

```
