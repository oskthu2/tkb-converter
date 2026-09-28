# Krav på anledning (ReasonRequired) - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Krav på anledning (ReasonRequired)**

## CodeSystem: Krav på anledning (ReasonRequired) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/scheduling-reasonrequired-cs | *Version*:2.0.0 |
| Active as of 2026-09-28 | *Computable Name*:ReasonRequiredCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ReasonRequiredEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Krav på anledning (ReasonRequired)](ValueSet-scheduling-reasonrequired-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "scheduling-reasonrequired-cs",
  "url" : "https://fhir.inera.se/CodeSystem/scheduling-reasonrequired-cs",
  "version" : "2.0.0",
  "name" : "ReasonRequiredCS",
  "title" : "Krav på anledning (ReasonRequired)",
  "status" : "active",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ReasonRequiredEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "Mandatory",
    "display" : "Obligatorisk",
    "definition" : "Invånaren måste ange en anledning"
  },
  {
    "code" : "Optional",
    "display" : "Frivillig",
    "definition" : "Invånaren kan ange en anledning (frivilligt)"
  },
  {
    "code" : "ReasonNotSupported",
    "display" : "Stöds inte",
    "definition" : "Invånaren kan inte ange en anledning"
  }]
}

```
