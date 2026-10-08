# Typ av närståenderelation - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av närståenderelation**

## CodeSystem: Typ av närståenderelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcloserelation-cs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:TypeOfCloseRelationCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfCloseRelationEnum i domänschemat. Visningstexter ur domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av närståenderelation](ValueSet-masterdata-citizen-patient-typeofcloserelation-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeofcloserelation-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcloserelation-cs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "TypeOfCloseRelationCS",
  "title" : "Typ av närståenderelation",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfCloseRelationEnum i domänschemat. Visningstexter ur domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 19,
  "concept" : [{
    "code" : "1",
    "display" : "make/maka"
  },
  {
    "code" : "2",
    "display" : "partner"
  },
  {
    "code" : "3",
    "display" : "sambo"
  },
  {
    "code" : "4",
    "display" : "barn"
  },
  {
    "code" : "5",
    "display" : "förälder"
  },
  {
    "code" : "6",
    "display" : "syskon"
  },
  {
    "code" : "7",
    "display" : "svärson/svärdotter"
  },
  {
    "code" : "8",
    "display" : "barnbarn"
  },
  {
    "code" : "9",
    "display" : "mor/farförälder"
  },
  {
    "code" : "10",
    "display" : "granne"
  },
  {
    "code" : "11",
    "display" : "arbetskamrat"
  },
  {
    "code" : "12",
    "display" : "vän"
  },
  {
    "code" : "13",
    "display" : "övrig närstående"
  },
  {
    "code" : "14",
    "display" : "adoptivbarn"
  },
  {
    "code" : "15",
    "display" : "adoptivförälder"
  },
  {
    "code" : "16",
    "display" : "styvbarn"
  },
  {
    "code" : "17",
    "display" : "styvförälder"
  },
  {
    "code" : "18",
    "display" : "fosterbarn"
  },
  {
    "code" : "19",
    "display" : "fosterförälder"
  }]
}

```
