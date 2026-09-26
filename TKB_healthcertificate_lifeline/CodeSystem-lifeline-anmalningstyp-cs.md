# Anmälningstyp - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anmälningstyp**

## CodeSystem: Anmälningstyp 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lifeline-anmalningstyp-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:AnmalningsTypCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för AnmalningsTyp i domänschemat. Visningstexter ur TKB avsnitt 3.4. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Anmälningstyp](ValueSet-lifeline-anmalningstyp-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lifeline-anmalningstyp-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lifeline-anmalningstyp-cs",
  "version" : "1.0.0",
  "name" : "AnmalningsTypCS",
  "title" : "Anmälningstyp",
  "status" : "active",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för AnmalningsTyp i domänschemat. Visningstexter ur TKB avsnitt 3.4.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "NYANMALD",
    "display" : "Nyanmäld"
  },
  {
    "code" : "RATTAD",
    "display" : "Rättad"
  },
  {
    "code" : "MAKULERAD",
    "display" : "Makulerad"
  }]
}

```
