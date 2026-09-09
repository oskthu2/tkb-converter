# ErrorCode - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ErrorCode**

## CodeSystem: ErrorCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/errorcode-actoutcome | *Version*:2.2.1 |
| Active as of 2026-09-09 | *Computable Name*:ErrorCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för felkoder i svar från tjänstekontrakten i domänen clinicalprocess:activityprescription:actoutcome. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ErrorCode — ValueSet](ValueSet-errorcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "errorcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/errorcode-actoutcome",
  "version" : "2.2.1",
  "name" : "ErrorCodeCS",
  "title" : "ErrorCode",
  "status" : "active",
  "date" : "2026-09-09T16:42:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för felkoder i svar från tjänstekontrakten i domänen clinicalprocess:activityprescription:actoutcome.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "INVALID_REQUEST",
    "display" : "Ogiltig begäran",
    "definition" : "Begäran är felaktig eller saknar obligatoriska fält"
  }]
}

```
