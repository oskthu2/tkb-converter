# SaveForm — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveForm — Request**

## Logical Model: SaveForm — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveform-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:SaveFormRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SaveForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2). Avslutar och sparar ett formulär. Formuläret byter status till COMPLETED. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-saveform-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveform-request.csv), [Excel](StructureDefinition-saveform-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveform-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveform-request",
  "version" : "2.0.0",
  "name" : "SaveFormRequest",
  "title" : "SaveForm — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SaveForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).\nAvslutar och sparar ett formulär. Formuläret byter status till COMPLETED.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveform-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveform-request",
      "path" : "saveform-request",
      "short" : "SaveForm — Request",
      "definition" : "Logisk modell för requestparametrar i SaveForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).\nAvslutar och sparar ett formulär. Formuläret byter status till COMPLETED."
    },
    {
      "id" : "saveform-request.formId",
      "path" : "saveform-request.formId",
      "short" : "Formulärets unika ID (GUID)",
      "definition" : "Formulärets unika ID (GUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveform-request.subjectOfCare",
      "path" : "saveform-request.subjectOfCare",
      "short" : "Invånarens personnummer (yyyymmddnnnn)",
      "definition" : "Invånarens personnummer (yyyymmddnnnn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer",
      "path" : "saveform-request.pageAnswer",
      "short" : "Sida med sista besvarade frågor (om ej redan sparade)",
      "definition" : "Sida med sista besvarade frågor (om ej redan sparade)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.pageNumber",
      "path" : "saveform-request.pageAnswer.pageNumber",
      "short" : "Sidans nummer",
      "definition" : "Sidans nummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.questionBlock",
      "path" : "saveform-request.pageAnswer.questionBlock",
      "short" : "Frågegrupperingar med svar",
      "definition" : "Frågegrupperingar med svar",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.questionBlock.question",
      "path" : "saveform-request.pageAnswer.questionBlock.question",
      "short" : "Frågor med svar",
      "definition" : "Frågor med svar",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.questionBlock.question.questionId",
      "path" : "saveform-request.pageAnswer.questionBlock.question.questionId",
      "short" : "Frågans ID",
      "definition" : "Frågans ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.questionBlock.question.answer",
      "path" : "saveform-request.pageAnswer.questionBlock.question.answer",
      "short" : "Invånarens svar",
      "definition" : "Invånarens svar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.questionBlock.question.answer.answerText",
      "path" : "saveform-request.pageAnswer.questionBlock.question.answer.answerText",
      "short" : "Svarstext",
      "definition" : "Svarstext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveform-request.pageAnswer.questionBlock.question.answer.answeredAlternativeId",
      "path" : "saveform-request.pageAnswer.questionBlock.question.answer.answeredAlternativeId",
      "short" : "ID för valt svarsalternativ",
      "definition" : "ID för valt svarsalternativ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
