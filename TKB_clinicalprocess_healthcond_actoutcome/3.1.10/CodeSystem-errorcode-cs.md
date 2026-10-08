# ErrorCode - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ErrorCode**

## CodeSystem: ErrorCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/errorcode | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:ErrorCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Felkod vid logiskt fel (ErrorCodeEnum), se kapitel 4.4. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ErrorCode — ValueSet](ValueSet-errorcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "errorcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/errorcode",
  "version" : "3.1.10",
  "name" : "ErrorCodeCS",
  "title" : "ErrorCode",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Felkod vid logiskt fel (ErrorCodeEnum), se kapitel 4.4. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "INVALID_REQUEST",
    "display" : "INVALID_REQUEST"
  }]
}

```
