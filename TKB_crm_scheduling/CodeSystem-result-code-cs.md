# ResultCode - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/result-code-cs | *Version*:1.1 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för resultatkoder i tjänstedomänen crm:scheduling. Används i svaren för CancelBooking, MakeBooking och UpdateBooking. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-result-code-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "result-code-cs",
  "url" : "https://fhir.inera.se/CodeSystem/result-code-cs",
  "version" : "1.1",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för resultatkoder i tjänstedomänen crm:scheduling. Används i svaren för CancelBooking, MakeBooking och UpdateBooking.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Åtgärden utfördes korrekt utan informationsmeddelanden."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Åtgärden utfördes korrekt men ett informationsmeddelande returnerades."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Åtgärden utfördes inte korrekt. Felmeddelande returnerades."
  }]
}

```
