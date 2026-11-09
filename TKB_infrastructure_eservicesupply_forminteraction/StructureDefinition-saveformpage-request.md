# SaveFormPage — Request - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormPage — Request**

## Logical Model: SaveFormPage — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage-request | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:SaveFormPageRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SaveFormPage. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-saveformpage-request.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage-request",
  "version" : "2.1",
  "name" : "SaveFormPageRequest",
  "title" : "SaveFormPage — Request",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SaveFormPage.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformpage-request",
      "path" : "saveformpage-request",
      "short" : "SaveFormPage — Request",
      "definition" : "Logisk modell för requestparametrar i SaveFormPage."
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
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks",
      "short" : "QuestionBlockAnswersType",
      "definition" : "questionAnswerBlocks",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.blockNumber",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.blockNumber",
      "short" : "blockNumber",
      "definition" : "blockNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers",
      "short" : "QuestionAnswerType",
      "definition" : "questionAnswers",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers",
      "short" : "AnswerType",
      "definition" : "answers",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerAlternativeNumber",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerAlternativeNumber",
      "short" : "Svarsalternativets id/nummer.",
      "definition" : "Svarsalternativets id/nummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerStatus",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerStatus",
      "short" : "AnswerStatusType",
      "definition" : "answerStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerStatus.resultCode",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerStatus.resultCode",
      "short" : "resultCode",
      "definition" : "Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod. OK - Transaktion utförd INFO - Transaktion utförd med kommentar. ERROR - Transaktion ej genomförd Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerStatus.resultCodeText",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.answerStatus.resultCodeText",
      "short" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "definition" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.value",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.answers.value",
      "short" : "Patientens/användarens svar.",
      "definition" : "Patientens/användarens svar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.questionNumber",
      "path" : "saveformpage-request.pageAnswer.questionAnswerBlocks.questionAnswers.questionNumber",
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
    },
    {
      "id" : "saveformpage-request.actor",
      "path" : "saveformpage-request.actor",
      "short" : "ActorType",
      "definition" : "actor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformpage-request.actor.actorId",
      "path" : "saveformpage-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "saveformpage-request.actor.actorType",
      "path" : "saveformpage-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType Tillåtna värden: CITIZEN, GUARDIAN, CAREGIVER.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
