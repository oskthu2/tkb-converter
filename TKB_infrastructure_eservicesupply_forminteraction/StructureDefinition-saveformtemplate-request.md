# SaveFormTemplate — Request - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormTemplate — Request**

## Logical Model: SaveFormTemplate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformtemplate-request | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:SaveFormTemplateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i SaveFormTemplate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-saveformtemplate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveformtemplate-request.csv), [Excel](StructureDefinition-saveformtemplate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveformtemplate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformtemplate-request",
  "version" : "2.1",
  "name" : "SaveFormTemplateRequest",
  "title" : "SaveFormTemplate — Request",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i SaveFormTemplate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformtemplate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformtemplate-request",
      "path" : "saveformtemplate-request",
      "short" : "SaveFormTemplate — Request",
      "definition" : "Logisk modell för requestparametrar i SaveFormTemplate."
    },
    {
      "id" : "saveformtemplate-request.formTemplate",
      "path" : "saveformtemplate-request.formTemplate",
      "short" : "FormTemplateType",
      "definition" : "formTemplate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.anonymousForm",
      "path" : "saveformtemplate-request.formTemplate.anonymousForm",
      "short" : "anonymousForm",
      "definition" : "anonymousForm",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.category",
      "path" : "saveformtemplate-request.formTemplate.category",
      "short" : "category",
      "definition" : "category",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.code",
      "path" : "saveformtemplate-request.formTemplate.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.code.codeValue",
      "path" : "saveformtemplate-request.formTemplate.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.code.codeSystem",
      "path" : "saveformtemplate-request.formTemplate.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.description",
      "path" : "saveformtemplate-request.formTemplate.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.descriptionInternal",
      "path" : "saveformtemplate-request.formTemplate.descriptionInternal",
      "short" : "Beskrivningsfält. Intern kommentar - Visas ej för patient.",
      "definition" : "Beskrivningsfält. Intern kommentar - Visas ej för patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.formCompleteText",
      "path" : "saveformtemplate-request.formTemplate.formCompleteText",
      "short" : "Informationstext vid avslutat och sparat formulär.",
      "definition" : "Informationstext vid avslutat och sparat formulär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.formName",
      "path" : "saveformtemplate-request.formTemplate.formName",
      "short" : "formName",
      "definition" : "formName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.formTitle",
      "path" : "saveformtemplate-request.formTemplate.formTitle",
      "short" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "definition" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.healthCareFacilityUnit",
      "path" : "saveformtemplate-request.formTemplate.healthCareFacilityUnit",
      "short" : "Ägaren av mallen. Hsa-id.",
      "definition" : "Ägaren av mallen. Hsa-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.language",
      "path" : "saveformtemplate-request.formTemplate.language",
      "short" : "language",
      "definition" : "language",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.media",
      "path" : "saveformtemplate-request.formTemplate.media",
      "short" : "MediaType",
      "definition" : "media",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.media.mediaURL",
      "path" : "saveformtemplate-request.formTemplate.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.media.mediaType",
      "path" : "saveformtemplate-request.formTemplate.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.media.mediaAlt",
      "path" : "saveformtemplate-request.formTemplate.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.media.mediaCaption",
      "path" : "saveformtemplate-request.formTemplate.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.maxNumberOfQuestions",
      "path" : "saveformtemplate-request.formTemplate.maxNumberOfQuestions",
      "short" : "maxNumberOfQuestions",
      "definition" : "maxNumberOfQuestions",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.minNumberOfQuestions",
      "path" : "saveformtemplate-request.formTemplate.minNumberOfQuestions",
      "short" : "minNumberOfQuestions",
      "definition" : "minNumberOfQuestions",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.maxNumberOfPages",
      "path" : "saveformtemplate-request.formTemplate.maxNumberOfPages",
      "short" : "maxNumberOfPages",
      "definition" : "maxNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.minNumberOfPages",
      "path" : "saveformtemplate-request.formTemplate.minNumberOfPages",
      "short" : "minNumberOfPages",
      "definition" : "minNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages",
      "path" : "saveformtemplate-request.formTemplate.pages",
      "short" : "TemplateRoutedPageType",
      "definition" : "pages",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page",
      "path" : "saveformtemplate-request.formTemplate.pages.page",
      "short" : "TemplatePageType",
      "definition" : "page",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks",
      "short" : "TemplateQuestionBlockType",
      "definition" : "questionBlocks",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.blockNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.blockNumber",
      "short" : "blockNumber",
      "definition" : "blockNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.description",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.gridConfig",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.gridConfig",
      "short" : "GridConfigType",
      "definition" : "gridConfig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.gridConfig.cols",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.gridConfig.cols",
      "short" : "cols",
      "definition" : "cols",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.gridConfig.rows",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.gridConfig.rows",
      "short" : "rows",
      "definition" : "rows",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.informationURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.informationURL",
      "short" : "informationURL",
      "definition" : "informationURL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.numberOfQuestions",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.numberOfQuestions",
      "short" : "numberOfQuestions",
      "definition" : "numberOfQuestions",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions",
      "short" : "TemplateQuestionType",
      "definition" : "questions",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives",
      "short" : "AnswerAlternativeType",
      "definition" : "answerAlternatives",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.alternativeValue",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.alternativeValue",
      "short" : "Valbart svarsalternativ.",
      "definition" : "Valbart svarsalternativ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "short" : "Svarsalternativets id.",
      "definition" : "Svarsalternativets id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.answerHelp",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.answerHelp",
      "short" : "Hjälptext till svarsalternativet. (placeholder)",
      "definition" : "Hjälptext till svarsalternativet. (placeholder)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.code",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.code",
      "short" : "CodeType",
      "definition" : "Objekt för att definiera kodverk kopplat till fråga.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.code.codeValue",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media",
      "short" : "MediaType",
      "definition" : "Svarsalternativ i bildform.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaType",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMax",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMax",
      "short" : "answerMax",
      "definition" : "answerMax",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMin",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMin",
      "short" : "answerMin",
      "definition" : "answerMin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMaxLength",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMaxLength",
      "short" : "answerMaxLength",
      "definition" : "answerMaxLength",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerPattern",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerPattern",
      "short" : "answerPattern",
      "definition" : "answerPattern",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerStep",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerStep",
      "short" : "answerStep",
      "definition" : "answerStep",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.code",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.code.codeValue",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.code.codeSystem",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.description",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.gridValue",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.gridValue",
      "short" : "GridValueType",
      "definition" : "gridValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.gridValue.col",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.gridValue.col",
      "short" : "col",
      "definition" : "col",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.gridValue.row",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.gridValue.row",
      "short" : "row",
      "definition" : "row",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.input",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.input",
      "short" : "input",
      "definition" : "input",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.inputUnit",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.inputUnit",
      "short" : "inputUnit",
      "definition" : "inputUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media",
      "short" : "MediaType",
      "definition" : "URL till bild. Bilden kan används för att illustrera en fråga. (QuestionType Image)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaType",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaAlt",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaCaption",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.informationURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.informationURL",
      "short" : "informationURL",
      "definition" : "informationURL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.mandatory",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.mandatory",
      "short" : "mandatory",
      "definition" : "mandatory",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.maxNumberOfChoices",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.maxNumberOfChoices",
      "short" : "maxNumberOfChoices",
      "definition" : "maxNumberOfChoices",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.minNumberOfChoices",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.minNumberOfChoices",
      "short" : "minNumberOfChoices",
      "definition" : "minNumberOfChoices",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionNumber",
      "short" : "questionNumber",
      "definition" : "questionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.subject",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.subject",
      "short" : "subject",
      "definition" : "subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionSuperior",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionSuperior",
      "short" : "QuestionSuperiorType",
      "definition" : "questionSuperior",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "short" : "superiorAnswerAlternativeNumbers",
      "definition" : "superiorAnswerAlternativeNumbers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "short" : "superiorQuestionNumber",
      "definition" : "superiorQuestionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.validationEvents",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.validationEvents",
      "short" : "ValidationEventType",
      "definition" : "validationEvents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.validationEvents.event",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.validationEvents.event",
      "short" : "event",
      "definition" : "Följande events är giltiga: mandatory answerMax answerMin answerMaxLength answerPattern maxNumberOfChoises minNumberOfChoises answerSuperior",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.validationEvents.text",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.validationEvents.text",
      "short" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "definition" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionAlign",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionAlign",
      "short" : "questionAlign",
      "definition" : "questionAlign",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMinLabel",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMinLabel",
      "short" : "answerMinLabel",
      "definition" : "answerMinLabel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMaxLabel",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerMaxLabel",
      "short" : "answerMaxLabel",
      "definition" : "answerMaxLabel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerPlaceholder",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.answerPlaceholder",
      "short" : "answerPlaceholder",
      "definition" : "answerPlaceholder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionId",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.questions.questionId",
      "short" : "questionId",
      "definition" : "questionId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.subject",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.subject",
      "short" : "subject",
      "definition" : "subject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media",
      "short" : "MediaType",
      "definition" : "media",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaType",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaAlt",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaCaption",
      "path" : "saveformtemplate-request.formTemplate.pages.page.questionBlocks.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.description",
      "path" : "saveformtemplate-request.formTemplate.pages.page.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.informationURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.informationURL",
      "short" : "informationURL",
      "definition" : "informationURL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.subject",
      "path" : "saveformtemplate-request.formTemplate.pages.page.subject",
      "short" : "subject",
      "definition" : "subject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.pagenumber",
      "path" : "saveformtemplate-request.formTemplate.pages.page.pagenumber",
      "short" : "pagenumber",
      "definition" : "pagenumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.media",
      "path" : "saveformtemplate-request.formTemplate.pages.page.media",
      "short" : "MediaType",
      "definition" : "media",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.media.mediaURL",
      "path" : "saveformtemplate-request.formTemplate.pages.page.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.media.mediaType",
      "path" : "saveformtemplate-request.formTemplate.pages.page.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.media.mediaAlt",
      "path" : "saveformtemplate-request.formTemplate.pages.page.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.page.media.mediaCaption",
      "path" : "saveformtemplate-request.formTemplate.pages.page.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing",
      "path" : "saveformtemplate-request.formTemplate.pages.routing",
      "short" : "TemplateRoutingType",
      "definition" : "routing",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes",
      "short" : "TemplateRouteType",
      "definition" : "routes",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes.pageNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes.pageNumber",
      "short" : "pageNumber",
      "definition" : "pageNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules",
      "short" : "TemplateRuleType",
      "definition" : "rules",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.blockNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.blockNumber",
      "short" : "blockNumber",
      "definition" : "blockNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.questionNumber",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.questionNumber",
      "short" : "Frågans nummer",
      "definition" : "Frågans nummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.operator",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.operator",
      "short" : "EQ (equality) LT (less then) GT (greater)",
      "definition" : "EQ (equality) LT (less then) GT (greater) Tillåtna värden: EQ, LT, GT.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.value",
      "path" : "saveformtemplate-request.formTemplate.pages.routing.routes.rules.value",
      "short" : "value",
      "definition" : "value",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.publishStatus",
      "path" : "saveformtemplate-request.formTemplate.publishStatus",
      "short" : "publishStatus",
      "definition" : "publishStatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.templateId",
      "path" : "saveformtemplate-request.formTemplate.templateId",
      "short" : "templateId",
      "definition" : "templateId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.templatePropagate",
      "path" : "saveformtemplate-request.formTemplate.templatePropagate",
      "short" : "TemplatePropagateType",
      "definition" : "Attribut för att reglera hur mallen delas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.templatePropagate.countycodes",
      "path" : "saveformtemplate-request.formTemplate.templatePropagate.countycodes",
      "short" : "countycodes",
      "definition" : "Avgränsande fält. Om Propagate \"true\" kan mallen delas inom en till flera länskoder. Om attributet är tomt delas mallen utan avgränsning. Avgärningens (länskod) gäller för inom det län verksamheten (hsa-id) verkar inom.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.templatePropagate.propagate",
      "path" : "saveformtemplate-request.formTemplate.templatePropagate.propagate",
      "short" : "Attribut för att indikera att mallen är global. True = Mallen delas (t.ex är nationell). False = Mallen delas inte.",
      "definition" : "Attribut för att indikera att mallen är global. True = Mallen delas (t.ex är nationell). False = Mallen delas inte.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.templateVersion",
      "path" : "saveformtemplate-request.formTemplate.templateVersion",
      "short" : "Mallens version.",
      "definition" : "Mallens version.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.term",
      "path" : "saveformtemplate-request.formTemplate.term",
      "short" : "term",
      "definition" : "term",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas",
      "short" : "CalculationFormulaType",
      "definition" : "calculationFormulas",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.calculationId",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.calculationId",
      "short" : "calculationId",
      "definition" : "calculationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.subject",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.subject",
      "short" : "subject",
      "definition" : "subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.descriptionCareActor",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.descriptionCareActor",
      "short" : "descriptionCareActor",
      "definition" : "descriptionCareActor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.descriptionSubjectOfCare",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.descriptionSubjectOfCare",
      "short" : "descriptionSubjectOfCare",
      "definition" : "descriptionSubjectOfCare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.approvedForSubjectOfCare",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.approvedForSubjectOfCare",
      "short" : "approvedForSubjectOfCare",
      "definition" : "approvedForSubjectOfCare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.type",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.type",
      "short" : "type",
      "definition" : "type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.license",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.license",
      "short" : "license",
      "definition" : "license",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.outcomePresentationPrecision",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.outcomePresentationPrecision",
      "short" : "outcomePresentationPrecision",
      "definition" : "outcomePresentationPrecision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformtemplate-request.formTemplate.calculationFormulas.formula",
      "path" : "saveformtemplate-request.formTemplate.calculationFormulas.formula",
      "short" : "formula",
      "definition" : "formula",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
