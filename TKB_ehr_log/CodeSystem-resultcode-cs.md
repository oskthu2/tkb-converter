# ResultCode - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.2.3 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Statuskoder som returneras av tjänstekontrakten i ehr:log-domänen. Definieras i TKB ehr:log avsnitt Datatyper. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.2.3",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Statuskoder som returneras av tjänstekontrakten i ehr:log-domänen. Definieras i TKB ehr:log avsnitt Datatyper.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Anropet genomfördes utan fel."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Anropet genomfördes med informationsmeddelande."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Tekniskt fel uppstod."
  },
  {
    "code" : "VALIDATIONERROR",
    "display" : "VALIDATIONERROR",
    "definition" : "Valideringsfel i indata."
  },
  {
    "code" : "ACCESSDENIED",
    "display" : "ACCESSDENIED",
    "definition" : "Åtkomst nekad av behörighetskontroll."
  },
  {
    "code" : "REPORTONQUEUE",
    "display" : "REPORTONQUEUE",
    "definition" : "Rapport är köad för generering. Använd returnerat queuedReportId i nästa anrop."
  },
  {
    "code" : "REPORTINPROCESS",
    "display" : "REPORTINPROCESS",
    "definition" : "Rapport håller på att genereras. Använd returnerat queuedReportId i nästa anrop."
  },
  {
    "code" : "REPORTNOTFOUND",
    "display" : "REPORTNOTFOUND",
    "definition" : "Rapport med angivet queuedReportId hittades inte."
  },
  {
    "code" : "MAXQUERYRESULTEXCEEDED",
    "display" : "MAXQUERYRESULTEXCEEDED",
    "definition" : "Maxantalet loggposter (10000) i svaret har överskridits. Justera datumintervallet."
  }]
}

```
