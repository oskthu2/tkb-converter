# Resultat (ResultType) - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resultat (ResultType)**

## Logical Model: Resultat (ResultType) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/interpretation-result | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:InterpretationResult |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för ResultType, som returneras av AnswerInquiry, CreateBooking och UpdateBooking. Se avsnitt 4.3 Felhantering. 

**Usages:**

* Use this Logical Model: [CreateBooking — Svar](StructureDefinition-createbooking-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-interpretation-result.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-interpretation-result.csv), [Excel](StructureDefinition-interpretation-result.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "interpretation-result",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/interpretation-result",
  "version" : "1.0.0",
  "name" : "InterpretationResult",
  "title" : "Resultat (ResultType)",
  "status" : "draft",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för ResultType, som returneras av AnswerInquiry, CreateBooking och UpdateBooking. Se avsnitt 4.3 Felhantering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/interpretation-result",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "interpretation-result",
      "path" : "interpretation-result",
      "short" : "Resultat (ResultType)",
      "definition" : "Logisk modell för ResultType, som returneras av AnswerInquiry, CreateBooking och UpdateBooking. Se avsnitt 4.3 Felhantering.",
      "constraint" : [{
        "key" : "interpretation-result-errorcode-on-error",
        "severity" : "error",
        "human" : "errorCode anges bara när resultCode är ERROR",
        "expression" : "errorCode.exists() implies resultCode = 'ERROR'",
        "source" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/interpretation-result"
      }]
    },
    {
      "id" : "interpretation-result.resultCode",
      "path" : "interpretation-result.resultCode",
      "short" : "Resultatkod",
      "definition" : "OK, INFO eller ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "interpretation-result.errorCode",
      "path" : "interpretation-result.errorCode",
      "short" : "Felkod",
      "definition" : "ErrorCodeEnum, se Regel #11 Logiska fel [R4].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "interpretation-result.subcode",
      "path" : "interpretation-result.subcode",
      "short" : "Underkod",
      "definition" : "Ytterligare felkod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "interpretation-result.logId",
      "path" : "interpretation-result.logId",
      "short" : "Logg-id",
      "definition" : "Unikt log-id för felsökning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "interpretation-result.message",
      "path" : "interpretation-result.message",
      "short" : "Meddelande",
      "definition" : "Beskrivande text.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
