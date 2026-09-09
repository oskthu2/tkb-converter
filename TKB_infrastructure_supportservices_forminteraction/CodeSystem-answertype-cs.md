# AnswerType - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnswerType**

## CodeSystem: AnswerType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/answertype-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:AnswerTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av svar i ett formulär enligt infrastructure:supportservices:forminteraction v2.0. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "answertype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/answertype-cs",
  "version" : "2.0.0",
  "name" : "AnswerTypeCS",
  "title" : "AnswerType",
  "status" : "active",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av svar i ett formulär enligt infrastructure:supportservices:forminteraction v2.0.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "STRING",
    "display" : "Textsvar",
    "definition" : "Svar i textformat"
  },
  {
    "code" : "INTEGER",
    "display" : "Heltalssvar",
    "definition" : "Svar i heltalsformat"
  },
  {
    "code" : "DECIMAL",
    "display" : "Decimalsvar",
    "definition" : "Svar i decimalformat"
  },
  {
    "code" : "DATE",
    "display" : "Datumsvar",
    "definition" : "Svar i datumformat"
  },
  {
    "code" : "BOOLEAN",
    "display" : "Booleanskt svar",
    "definition" : "Ja/nej-svar"
  }]
}

```
