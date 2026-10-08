# Resultatkod - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-resultcodeenum-cs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:ResultCodeEnumCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnumType i domänschemat. Visningstexter ur domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod](ValueSet-masterdata-citizen-patient-resultcodeenum-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-resultcodeenum-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-resultcodeenum-cs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "ResultCodeEnumCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeEnumType i domänschemat. Visningstexter ur domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK"
  },
  {
    "code" : "ERROR",
    "display" : "ERROR"
  },
  {
    "code" : "INFO",
    "display" : "INFO"
  }]
}

```
