# ResultCode - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-actoutcome | *Version*:2.2.1 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för resultatkod i svar från tjänstekontrakten i domänen clinicalprocess:activityprescription:actoutcome. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-actoutcome",
  "version" : "2.2.1",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:42:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för resultatkod i svar från tjänstekontrakten i domänen clinicalprocess:activityprescription:actoutcome.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Begäran genomfördes utan fel"
  },
  {
    "code" : "INFO",
    "display" : "Info",
    "definition" : "Begäran genomfördes men med informationsmeddelande"
  },
  {
    "code" : "ERROR",
    "display" : "Fel",
    "definition" : "Begäran misslyckades med logiskt fel"
  }]
}

```
