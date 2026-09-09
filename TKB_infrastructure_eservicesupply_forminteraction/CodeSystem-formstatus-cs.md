# KV Form Status - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KV Form Status**

## CodeSystem: KV Form Status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/formstatus-cs | *Version*:2.1 |
| Active as of 2026-09-09 | *Computable Name*:FormStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för formulärets status. Definierar i vilken fas ett formulär befinner sig. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KV Form Status — ValueSet](ValueSet-formstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "formstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/formstatus-cs",
  "version" : "2.1",
  "name" : "FormStatusCS",
  "title" : "KV Form Status",
  "status" : "active",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för formulärets status. Definierar i vilken fas ett formulär befinner sig.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "ONGOING",
    "display" : "Pågående",
    "definition" : "Formulär skapat/formulärbegäran skapad. Pågående, frågor har temporärsparats."
  },
  {
    "code" : "PENDING_COMPLETION",
    "display" : "Väntar på avslut",
    "definition" : "Pågående, frågor har temporärsparats. Alla frågor är besvarade."
  },
  {
    "code" : "COMPLETED",
    "display" : "Avslutad",
    "definition" : "Formuläret är besvarat och avslutat av invånaren."
  }]
}

```
