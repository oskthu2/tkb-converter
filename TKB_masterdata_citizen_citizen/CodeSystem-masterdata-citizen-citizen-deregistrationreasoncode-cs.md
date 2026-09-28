# Kod för avregistreringsorsak - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kod för avregistreringsorsak**

## CodeSystem: Kod för avregistreringsorsak 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-deregistrationreasoncode-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:DeregistrationReasonCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för DeregistrationReasonCodeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kod för avregistreringsorsak](ValueSet-masterdata-citizen-citizen-deregistrationreasoncode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-citizen-deregistrationreasoncode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-citizen-deregistrationreasoncode-cs",
  "version" : "2.0.0",
  "name" : "DeregistrationReasonCodeCS",
  "title" : "Kod för avregistreringsorsak",
  "status" : "active",
  "date" : "2026-09-28T09:13:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för DeregistrationReasonCodeType i domänschemat. Visningstexter ur TKB kapitel 7 och domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "AV",
    "display" : "Avliden"
  },
  {
    "code" : "UV",
    "display" : "Utvandrad"
  },
  {
    "code" : "GN",
    "display" : "Gammalt personnummer"
  },
  {
    "code" : "AN",
    "display" : "Annan anledning"
  },
  {
    "code" : "AS",
    "display" : "Avslutad"
  },
  {
    "code" : "GS",
    "display" : "Gammalt samordningsnummer"
  },
  {
    "code" : "OB",
    "display" : "Försvunnen"
  },
  {
    "code" : "TA",
    "display" : "Tekniskt avregistrerad"
  }]
}

```
