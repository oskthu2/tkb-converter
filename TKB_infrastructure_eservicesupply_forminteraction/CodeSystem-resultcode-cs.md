# KV Resultatkod - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KV Resultatkod**

## CodeSystem: KV Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:2.1 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för resultatkod — anger status på en operation i formulärinteraktionstjänsterna. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KV Resultatkod — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "2.1",
  "name" : "ResultCodeCS",
  "title" : "KV Resultatkod",
  "status" : "active",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för resultatkod — anger status på en operation i formulärinteraktionstjänsterna.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Lyckat anrop."
  },
  {
    "code" : "INFO",
    "display" : "Info",
    "definition" : "Anropet lyckades men det finns information som behöver förmedlas till aktören/invånaren, exempelvis 'medtag legitimation vid besöket'."
  },
  {
    "code" : "ERROR",
    "display" : "Fel",
    "definition" : "Transaktionen misslyckades p g a logiskt fel."
  }]
}

```
