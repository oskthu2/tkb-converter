# Barnets kön - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Barnets kön**

## CodeSystem: Barnets kön 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lifeline-kon-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:KonCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för Kon i domänschemat. Visningstexter ur TKB avsnitt 3.4. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Barnets kön](ValueSet-lifeline-kon-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lifeline-kon-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lifeline-kon-cs",
  "version" : "1.0.0",
  "name" : "KonCS",
  "title" : "Barnets kön",
  "status" : "active",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för Kon i domänschemat. Visningstexter ur TKB avsnitt 3.4.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "FLICKA",
    "display" : "Flicka"
  },
  {
    "code" : "POJKE",
    "display" : "Pojke"
  }]
}

```
