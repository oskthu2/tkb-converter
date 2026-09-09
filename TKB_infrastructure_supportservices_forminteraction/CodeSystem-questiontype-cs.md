# QuestionType - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **QuestionType**

## CodeSystem: QuestionType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/questiontype-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:QuestionTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av fråga (KV Frågetype) i ett formulär enligt infrastructure:supportservices:forminteraction v2.0. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [QuestionType — ValueSet](ValueSet-questiontype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "questiontype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/questiontype-cs",
  "version" : "2.0.0",
  "name" : "QuestionTypeCS",
  "title" : "QuestionType",
  "status" : "active",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av fråga (KV Frågetype) i ett formulär enligt infrastructure:supportservices:forminteraction v2.0.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "RADIO",
    "display" : "Radioknapp",
    "definition" : "Fråga med ett svarsalternativ (radioknapp)"
  },
  {
    "code" : "CHECKBOX",
    "display" : "Kryssruta",
    "definition" : "Fråga med ett eller flera svarsalternativ (kryssruta)"
  },
  {
    "code" : "TEXT",
    "display" : "Fritext",
    "definition" : "Fritextfråga"
  },
  {
    "code" : "DATE",
    "display" : "Datum",
    "definition" : "Datumfråga"
  },
  {
    "code" : "NUMERIC",
    "display" : "Numeriskt",
    "definition" : "Numerisk fråga"
  }]
}

```
