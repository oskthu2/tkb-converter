# ResultCode - ehr: commission v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## CodeSystem: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/resultcode-cs | *Version*:1.0.0 |
| Active as of 2026-09-09 | *Computable Name*:ResultCodeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Enumerationsvärden för svarskoder som används i ehr:commission-tjänsterna. Kodverket definierar möjliga utfall av ett tjänsteanrop (ResultType.ResultCode). Källa: TKB ehr:commission v1.0, avsnitt Datatyper — commissionservice:ResultCode. XSD: urn:riv:ehr:commission:1, typ ResultCodeType. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ResultCode — ValueSet](ValueSet-resultcode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "resultcode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/resultcode-cs",
  "version" : "1.0.0",
  "name" : "ResultCodeCS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-09-09T16:52:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Enumerationsvärden för svarskoder som används i ehr:commission-tjänsterna.\nKodverket definierar möjliga utfall av ett tjänsteanrop (ResultType.ResultCode).\nKälla: TKB ehr:commission v1.0, avsnitt Datatyper — commissionservice:ResultCode.\nXSD: urn:riv:ehr:commission:1, typ ResultCodeType.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "OK",
    "display" : "OK",
    "definition" : "Transaktionen har utförts enligt uppdraget."
  },
  {
    "code" : "INFO",
    "display" : "INFO",
    "definition" : "Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel: uppdrag ej valt."
  },
  {
    "code" : "ERROR",
    "display" : "ERROR",
    "definition" : "Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel: personen finns inte i HSA."
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
  }]
}

```
