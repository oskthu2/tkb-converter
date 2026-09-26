# Process* — Svar (ResultType) - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Process* — Svar (ResultType)**

## Logical Model: Process* — Svar (ResultType) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/process-result | *Version*:2.2.0 |
| Draft as of 2026-09-26 | *Computable Name*:ProcessResult |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome (ProcessRequest*ResponseType.result av typen ResultType). Beskriver om begäran gick bra eller ej, se avsnitt 4.3 Felhantering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-request|current/StructureDefinition/StructureDefinition-process-result.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-process-result.csv), [Excel](StructureDefinition-process-result.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "process-result",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/process-result",
  "version" : "2.2.0",
  "name" : "ProcessResult",
  "title" : "Process* — Svar (ResultType)",
  "status" : "draft",
  "date" : "2026-09-26T19:14:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome (ProcessRequest*ResponseType.result av typen ResultType). Beskriver om begäran gick bra eller ej, se avsnitt 4.3 Felhantering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/process-result",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "process-result",
      "path" : "process-result",
      "short" : "Process* — Svar (ResultType)",
      "definition" : "Logisk modell för svaret i ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome (ProcessRequest*ResponseType.result av typen ResultType). Beskriver om begäran gick bra eller ej, se avsnitt 4.3 Felhantering.",
      "constraint" : [{
        "key" : "processresult-errorcode-only-on-error",
        "severity" : "error",
        "human" : "errorCode sätts endast när resultCode är ERROR",
        "expression" : "errorCode.exists() implies resultCode = 'ERROR'",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/process-result"
      }]
    },
    {
      "id" : "process-result.resultCode",
      "path" : "process-result.resultCode",
      "short" : "Resultatkod",
      "definition" : "OK, INFO eller ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "process-result.errorCode",
      "path" : "process-result.errorCode",
      "short" : "Felkod",
      "definition" : "VALIDATION_ERROR eller APPLICATION_ERROR. Sätts endast när resultCode är ERROR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "process-result.subCode",
      "path" : "process-result.subCode",
      "short" : "Underkod",
      "definition" : "Standardiserad felkod för logiska fel, se 4.3.1.1 Logiska fel – tabell Felkoder.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "process-result.logId",
      "path" : "process-result.logId",
      "short" : "Logg-id",
      "definition" : "Unikt log-id för felsökning hos producenten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "process-result.message",
      "path" : "process-result.message",
      "short" : "Meddelande",
      "definition" : "Beskrivande text som kan visas för användaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
