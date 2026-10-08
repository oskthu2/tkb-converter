# Tidbokningsflöde (Process) - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tidbokningsflöde (Process)**

## CodeSystem: Tidbokningsflöde (Process) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/scheduling-process-cs | *Version*:2.0.0-rc1 |
| Active as of 2026-10-08 | *Computable Name*:ProcessCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ProcessEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Tidbokningsflöde (Process)](ValueSet-scheduling-process-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "scheduling-process-cs",
  "url" : "https://fhir.inera.se/CodeSystem/scheduling-process-cs",
  "version" : "2.0.0-rc1",
  "name" : "ProcessCS",
  "title" : "Tidbokningsflöde (Process)",
  "status" : "active",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ProcessEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "NYBOKNING",
    "display" : "Nybokningsflöde",
    "definition" : "Nybokningsflöde"
  },
  {
    "code" : "AVBOKNING",
    "display" : "Avbokningsflöde",
    "definition" : "Avbokningsflöde"
  },
  {
    "code" : "OMBOKNING",
    "display" : "Ombokningsflöde",
    "definition" : "Ombokningsflöde"
  }]
}

```
