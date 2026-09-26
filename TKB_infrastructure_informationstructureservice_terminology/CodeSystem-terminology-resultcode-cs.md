# Resultatkod - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/terminology-resultcode-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 7 (fältregler). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod](ValueSet-terminology-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "terminology-resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/terminology-resultcode-cs",
  "version" : "1.0.0",
  "name" : "ResultCodeCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-09-26T19:32:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 7 (fältregler).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Anropet lyckades utan avvikelser."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Fel vid hämtningen; felet beskrivs i elementet comment."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Information finns; informationen beskrivs i elementet comment."
  }]
}

```
