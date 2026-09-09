# Status - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status**

## CodeSystem: Status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/status-cs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:StatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för statustyp för läkarintyg i tjänstekontrakten ListCertificates och SetCertificateStatus. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Status — ValueSet](ValueSet-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "status-cs",
  "url" : "https://fhir.inera.se/CodeSystem/status-cs",
  "version" : "3.1.0",
  "name" : "StatusCS",
  "title" : "Status",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för statustyp för läkarintyg i tjänstekontrakten ListCertificates och SetCertificateStatus.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "SENT",
    "display" : "Skickat",
    "definition" : "Intyget har skickats till mottagaren"
  },
  {
    "code" : "RECEIVED",
    "display" : "Mottaget",
    "definition" : "Mottagaren har bekräftat mottagande"
  },
  {
    "code" : "CANCELLED",
    "display" : "Makulerat",
    "definition" : "Intyget har makulerats"
  },
  {
    "code" : "DELETED",
    "display" : "Borttaget",
    "definition" : "Intyget har tagits bort"
  }]
}

```
