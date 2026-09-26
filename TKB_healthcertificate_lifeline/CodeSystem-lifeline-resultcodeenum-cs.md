# Resultatkod - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultatkod**

## CodeSystem: Resultatkod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/lifeline-resultcodeenum-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:ResultCodeEnumCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResultCodeEnumType i domänschemat. Visningstexter ur TKB avsnitt 2.2. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Resultatkod](ValueSet-lifeline-resultcodeenum-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lifeline-resultcodeenum-cs",
  "url" : "https://fhir.inera.se/CodeSystem/lifeline-resultcodeenum-cs",
  "version" : "1.0.0",
  "name" : "ResultCodeEnumCS",
  "title" : "Resultatkod",
  "status" : "active",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResultCodeEnumType i domänschemat. Visningstexter ur TKB avsnitt 2.2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Transaktionen har utförts enligt uppdraget."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Transaktionen har inte kunnat utföras på grund av logiskt fel. Det finns ett meddelande som konsumenten måste visa upp."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Transaktionen har utförts enligt uppdraget, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren."
  }]
}

```
