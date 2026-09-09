# GetFormQuestionPage — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormQuestionPage — Request**

## Logical Model: GetFormQuestionPage — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage-request | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormQuestionPageRequest |
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
  "version" : "2.1",
  "name" : "GetFormQuestionPageRequest",
  "title" : "GetFormQuestionPage — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
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
      "id" : "getformquestionpage-request.formID",
      "path" : "getformquestionpage-request.formID",
      "short" : "Formulär-id",
      "definition" : "Ett unikt id (GUID) för ett formulär.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getformquestionpage-request.pageNumber",
      "path" : "getformquestionpage-request.pageNumber",
      "short" : "Sidnummer",
      "definition" : "Nummer på sidan som navigering utgår ifrån. Ange 0 för att navigera till första/sista sidan.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage-request.direction",
      "path" : "getformquestionpage-request.direction",
      "short" : "Riktning",
      "definition" : "Kodverk: FORWARD = framåt, BACK = bakåt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/questionnavigationdirection-vs"
      }
    },
    {
      "id" : "getformquestionpage-request.subjectOfCare",
      "path" : "getformquestionpage-request.subjectOfCare",
      "short" : "Personnummer",
      "definition" : "Invånarens personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
