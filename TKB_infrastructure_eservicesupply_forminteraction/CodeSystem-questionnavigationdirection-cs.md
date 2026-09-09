# KV Navigeringsriktning - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KV Navigeringsriktning**

## CodeSystem: KV Navigeringsriktning 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/questionnavigationdirection-cs | *Version*:2.1 |
| Active as of 2026-09-09 | *Computable Name*:QuestionNavigationDirectionCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för navigeringsriktning vid GetFormQuestionPage — anger om användaren navigerar framåt eller bakåt i ett formulär. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KV Navigeringsriktning — ValueSet](ValueSet-questionnavigationdirection-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "questionnavigationdirection-cs",
  "url" : "https://fhir.inera.se/CodeSystem/questionnavigationdirection-cs",
  "version" : "2.1",
  "name" : "QuestionNavigationDirectionCS",
  "title" : "KV Navigeringsriktning",
  "status" : "active",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för navigeringsriktning vid GetFormQuestionPage — anger om användaren navigerar framåt eller bakåt i ett formulär.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "FORWARD",
    "display" : "Framåt",
    "definition" : "Navigera till nästa sida i formuläret."
  },
  {
    "code" : "BACK",
    "display" : "Bakåt",
    "definition" : "Navigera till föregående sida i formuläret."
  }]
}

```
