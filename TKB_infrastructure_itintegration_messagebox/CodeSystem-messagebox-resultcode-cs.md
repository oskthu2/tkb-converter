# Resultatkod - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/messagebox-resultcode-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod](ValueSet-messagebox-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "messagebox-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/messagebox-resultcode-cs",
  "version" : "1.0.0",
  "name" : "ResultCodeCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Anropet lyckades."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Anropet misslyckades; typen av fel anges i errorId."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Anropet ansågs lyckat, men det finns mer information om under vilka omständigheter."
  }]
}

```
