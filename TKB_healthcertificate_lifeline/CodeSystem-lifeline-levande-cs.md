# Levande vid födelsen - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Levande vid födelsen**

## CodeSystem: Levande vid födelsen 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lifeline-levande-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:LevandeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för Levande i domänschemat. Visningstexter ur TKB avsnitt 3.4. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Levande vid födelsen](ValueSet-lifeline-levande-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lifeline-levande-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lifeline-levande-cs",
  "version" : "1.0.0",
  "name" : "LevandeCS",
  "title" : "Levande vid födelsen",
  "status" : "active",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för Levande i domänschemat. Visningstexter ur TKB avsnitt 3.4.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "JA",
    "display" : "Ja",
    "definition" : "Barnet var levande vid födelsen."
  },
  {
    "code" : "NEJ",
    "display" : "Nej",
    "definition" : "Barnet var inte levande vid födelsen."
  }]
}

```
