# FormStatus - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FormStatus**

## CodeSystem: FormStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/formstatus-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:FormStatusCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för formulärets status (KV Form Status) enligt infrastructure:supportservices:forminteraction v2.0. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FormStatus — ValueSet](ValueSet-formstatus-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "formstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/formstatus-cs",
  "version" : "2.0.0",
  "name" : "FormStatusCS",
  "title" : "FormStatus",
  "status" : "active",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för formulärets status (KV Form Status) enligt infrastructure:supportservices:forminteraction v2.0.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "COMPLETED",
    "display" : "COMPLETED",
    "definition" : "Avslutat. Formuläret är besvarat och avslutat av invånaren. Konsumerande system kan endast visa formulär i läsläge."
  },
  {
    "code" : "ONGOING",
    "display" : "ONGOING",
    "definition" : "Pågående — frågor har temporärsparats."
  },
  {
    "code" : "PENDING_COMPLETION",
    "display" : "PENDING_COMPLETION",
    "definition" : "Pågående — frågor har temporärsparats. Alla frågor är besvarade. Formuläret byter status till COMPLETED via SaveForm."
  }]
}

```
