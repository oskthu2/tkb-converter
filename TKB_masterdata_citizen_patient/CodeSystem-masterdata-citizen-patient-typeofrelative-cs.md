# Typ av släktrelation - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av släktrelation**

## CodeSystem: Typ av släktrelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofrelative-cs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:TypeOfRelativeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfRelativeEnum i domänschemat. Visningstexter ur kodverket kv_släktrelation_12_v1.0 (1.2.752.129.2.2.1.24). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av släktrelation](ValueSet-masterdata-citizen-patient-typeofrelative-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeofrelative-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofrelative-cs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "TypeOfRelativeCS",
  "title" : "Typ av släktrelation",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfRelativeEnum i domänschemat. Visningstexter ur kodverket kv_släktrelation_12_v1.0 (1.2.752.129.2.2.1.24).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "1",
    "display" : "mor"
  },
  {
    "code" : "2",
    "display" : "far"
  },
  {
    "code" : "3",
    "display" : "son"
  },
  {
    "code" : "4",
    "display" : "dotter"
  },
  {
    "code" : "5",
    "display" : "syster"
  },
  {
    "code" : "6",
    "display" : "bror"
  },
  {
    "code" : "7",
    "display" : "farmor"
  },
  {
    "code" : "8",
    "display" : "mormor"
  },
  {
    "code" : "9",
    "display" : "farfar"
  },
  {
    "code" : "10",
    "display" : "morfar"
  },
  {
    "code" : "11",
    "display" : "barnbarn"
  },
  {
    "code" : "12",
    "display" : "barnbarnsbarn"
  },
  {
    "code" : "13",
    "display" : "moster/morbror"
  },
  {
    "code" : "14",
    "display" : "faster/farbror"
  },
  {
    "code" : "15",
    "display" : "kusin"
  }]
}

```
