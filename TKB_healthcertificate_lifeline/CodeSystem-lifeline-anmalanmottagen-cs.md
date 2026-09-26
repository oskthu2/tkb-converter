# Anmälan mottagen - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anmälan mottagen**

## CodeSystem: Anmälan mottagen 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lifeline-anmalanmottagen-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:AnmalanMottagenCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för AnmalanMottagen i domänschemat. Visningstexter ur TKB avsnitt 3.4. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Anmälan mottagen](ValueSet-lifeline-anmalanmottagen-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lifeline-anmalanmottagen-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lifeline-anmalanmottagen-cs",
  "version" : "1.0.0",
  "name" : "AnmalanMottagenCS",
  "title" : "Anmälan mottagen",
  "status" : "active",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för AnmalanMottagen i domänschemat. Visningstexter ur TKB avsnitt 3.4.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "JA",
    "display" : "Ja",
    "definition" : "Anmälan är mottagen av Skatteverket och ska inte sändas in igen."
  },
  {
    "code" : "NEJ",
    "display" : "Nej",
    "definition" : "Anmälan har inte mottagits och får sändas om."
  }]
}

```
