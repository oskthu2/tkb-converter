# Resultatkod - financial: billing: claim v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/financial-billing-claim-resultcode-cs | *Version*:1.1.0 |
| Active as of 2026-10-08 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.3.1.1. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod](ValueSet-financial-billing-claim-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "financial-billing-claim-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/financial-billing-claim-resultcode-cs",
  "version" : "1.1.0",
  "name" : "ResultCodeCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-10-08T18:23:37+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.3.1.1.",
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
