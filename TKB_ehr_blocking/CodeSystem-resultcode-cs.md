# ResultCode - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:3.2.2 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Svarskoder för spärrtjänsternas operationer enligt urn:riv:ehr:blocking:2. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "3.2.2",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Svarskoder för spärrtjänsternas operationer enligt urn:riv:ehr:blocking:2. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
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
    "display" : "Info",
    "definition" : "Transaktionen har utförts, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart)."
  },
  {
    "code" : "ERROR",
    "display" : "Fel",
    "definition" : "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp."
  },
  {
    "code" : "VALIDATIONERROR",
    "display" : "Valideringsfel",
    "definition" : "En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej."
  },
  {
    "code" : "ACCESSDENIED",
    "display" : "Åtkomst nekad",
    "definition" : "Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej."
  },
  {
    "code" : "NOTFOUND",
    "display" : "Hittades inte",
    "definition" : "Angiven artifakt finns ej. Angiven tjänst utfördes ej."
  },
  {
    "code" : "ALREADYEXISTS",
    "display" : "Finns redan",
    "definition" : "Angiven artifakt finns redan. Angiven tjänst utfördes ej."
  },
  {
    "code" : "INVALIDSTATE",
    "display" : "Ogiltigt tillstånd",
    "definition" : "Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd."
  }]
}

```
