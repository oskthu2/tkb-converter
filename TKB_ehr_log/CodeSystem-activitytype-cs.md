# ActivityType - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActivityType**

## CodeSystem: ActivityType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/activitytype-cs | *Version*:1.2.3 |
| Active as of 2026-09-09 | *Computable Name*:ActivityTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för typ av aktivitet som utförts. Definieras i TKB ehr:log avsnitt Datatyper (log:ActivityType). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActivityType — ValueSet](ValueSet-activitytype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "activitytype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/activitytype-cs",
  "version" : "1.2.3",
  "name" : "ActivityTypeCS",
  "title" : "ActivityType",
  "status" : "active",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för typ av aktivitet som utförts. Definieras i TKB ehr:log avsnitt Datatyper (log:ActivityType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "Läsa",
    "display" : "Läsa",
    "definition" : "En läsning av data har utförts."
  },
  {
    "code" : "Skriva",
    "display" : "Skriva",
    "definition" : "En aktivitet där något läggs till."
  },
  {
    "code" : "Signera",
    "display" : "Signera",
    "definition" : "Signering har utförts."
  },
  {
    "code" : "Utskrift",
    "display" : "Utskrift",
    "definition" : "En utskrift har utförts."
  },
  {
    "code" : "Vidimera",
    "display" : "Vidimera",
    "definition" : "En autentisering har utförts."
  },
  {
    "code" : "Radera",
    "display" : "Radera",
    "definition" : "Något har raderats."
  },
  {
    "code" : "Nödöppning",
    "display" : "Nödöppning",
    "definition" : "Nödöppning har gjorts."
  }]
}

```
