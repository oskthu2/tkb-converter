# SaveFormPage — Request - infrastructure: supportservices: forminteraction v2.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormPage — Request**

## Logical Model: SaveFormPage — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveformpage-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:SaveFormPageRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SaveFormPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2). Sparar invånarens besvarade frågor på en sida under pågående formulärsession. Om temporarySave anges: spara utan validering, returnera samma sida. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-saveformpage-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveformpage-request.csv), [Excel](StructureDefinition-saveformpage-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveformpage-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveformpage-request",
  "version" : "2.0",
  "name" : "SaveFormPageRequest",
  "title" : "SaveFormPage — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:41:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SaveFormPage\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2).\nSparar invånarens besvarade frågor på en sida under pågående formulärsession.\nOm temporarySave anges: spara utan validering, returnera samma sida.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/saveformpage-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformpage-request",
      "path" : "saveformpage-request",
      "short" : "SaveFormPage — Request",
      "definition" : "Logisk modell för requestparametrar i SaveFormPage\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2).\nSparar invånarens besvarade frågor på en sida under pågående formulärsession.\nOm temporarySave anges: spara utan validering, returnera samma sida."
    },
    {
      "id" : "saveformpage-request.formId",
      "path" : "saveformpage-request.formId",
      "short" : "formId",
      "definition" : "formId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer",
      "path" : "saveformpage-request.pageAnswer",
      "short" : "PageAnswerType",
      "definition" : "pageAnswer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.pageNumber",
      "path" : "saveformpage-request.pageAnswer.pageNumber",
      "short" : "pageNumber",
      "definition" : "pageNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock",
      "short" : "QuestionBlockAnswersType",
      "definition" : "questionAnswerBlock",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.blockNumber",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.blockNumber",
      "short" : "blockNumber",
      "definition" : "blockNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer",
      "short" : "QuestionAnswerType",
      "definition" : "questionAnswer",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer",
      "short" : "AnswerType",
      "definition" : "answer",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerAlternativeNumber",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerAlternativeNumber",
      "short" : "Svarsalternativets id/nummer.",
      "definition" : "Svarsalternativets id/nummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerStatus",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerStatus",
      "short" : "AnswerStatusType",
      "definition" : "answerStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerStatus.resultCode",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerStatus.resultCode",
      "short" : "resultCode",
      "definition" : "Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod. OK - Transaktion utförd INFO - Transaktion utförd med kommentar. ERROR - Transaktion ej genomförd Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerStatus.resultCodeText",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.answerStatus.resultCodeText",
      "short" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "definition" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.value",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.answer.value",
      "short" : "Patientens/användarens svar.",
      "definition" : "Patientens/användarens svar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.questionNumber",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlock.questionAnswer.questionNumber",
      "short" : "questionNumber",
      "definition" : "questionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage-request.subjectOfCare",
      "path" : "saveformpage-request.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.temporarySave",
      "path" : "saveformpage-request.temporarySave",
      "short" : "Formuläret skall sparas temporärt. - Indata skall ej valideras. - Samma CurrentPage returneras.",
      "definition" : "Formuläret skall sparas temporärt. - Indata skall ej valideras. - Samma CurrentPage returneras.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
