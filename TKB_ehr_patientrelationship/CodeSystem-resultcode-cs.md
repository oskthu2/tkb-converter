# ResultCode - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.0.1 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Svarskoder för tjänstekontrakt i ehr:patientrelationship. Anger status för utförda operationer. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.0.1",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Svarskoder för tjänstekontrakt i ehr:patientrelationship. Anger status för utförda operationer.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Transaktionen har utförts enligt uppdraget."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart)."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp."
  },
  {
    "code" : "VALIDATION_ERROR",
    "display" : "VALIDATION_ERROR",
    "definition" : "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
  },
  {
    "code" : "ACCESSDENIED",
    "display" : "ACCESSDENIED",
    "definition" : "Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej."
  },
  {
    "code" : "NOTFOUND",
    "display" : "NOTFOUND",
    "definition" : "Angiven artifakt finns ej. Angiven tjänst utfördes ej."
  },
  {
    "code" : "ALREADYEXISTS",
    "display" : "ALREADYEXISTS",
    "definition" : "Angiven artifakt finns redan. Angiven tjänst utfördes ej."
  },
  {
    "code" : "INVALIDSTATE",
    "display" : "INVALIDSTATE",
    "definition" : "Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd."
  }]
}

```
