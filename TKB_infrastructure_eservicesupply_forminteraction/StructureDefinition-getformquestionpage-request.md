# GetFormQuestionPage — Request - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormQuestionPage — Request**

## Logical Model: GetFormQuestionPage — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetFormQuestionPageRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormQuestionPage. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getformquestionpage-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformquestionpage-request.csv), [Excel](StructureDefinition-getformquestionpage-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformquestionpage-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage-request",
  "version" : "2.0",
  "name" : "GetFormQuestionPageRequest",
  "title" : "GetFormQuestionPage — Request",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormQuestionPage.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformquestionpage-request",
      "path" : "getformquestionpage-request",
      "short" : "GetFormQuestionPage — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormQuestionPage."
    },
    {
      "id" : "getformquestionpage-request.direction",
      "path" : "getformquestionpage-request.direction",
      "short" : "direction",
      "definition" : "Begäran -Direction ”BACK” är inte tillåtet om objektet ”PagenumberBlockNumber” är 1. -Direction ”FORWARD” är inte tillåtet om föregående objektets LastBlock är sant (true). Vid ovanstående fel genereras ett exception.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage-request.formId",
      "path" : "getformquestionpage-request.formId",
      "short" : "formId",
      "definition" : "formId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage-request.pageNumber",
      "path" : "getformquestionpage-request.pageNumber",
      "short" : "pageNumber",
      "definition" : "pageNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage-request.subjectOfCare",
      "path" : "getformquestionpage-request.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
