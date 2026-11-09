# GetFormQuestionPage - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormQuestionPage**

## Logical Model: GetFormQuestionPage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetFormQuestionPage |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetFormQuestionPage (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2). Representerar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getformquestionpage.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformquestionpage.csv), [Excel](StructureDefinition-getformquestionpage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformquestionpage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage",
  "version" : "2.0",
  "name" : "GetFormQuestionPage",
  "title" : "GetFormQuestionPage",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2).\nRepresenterar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformquestionpage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformquestionpage",
      "path" : "getformquestionpage",
      "short" : "GetFormQuestionPage",
      "definition" : "Logisk modell för tjänstekontraktet GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2).\nRepresenterar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering."
    },
    {
      "id" : "getformquestionpage.form",
      "path" : "getformquestionpage.form",
      "short" : "FormType",
      "definition" : "form",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.createdDateTime",
      "path" : "getformquestionpage.form.createdDateTime",
      "short" : "createdDateTime",
      "definition" : "createdDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.clinicalProcessInterestId",
      "path" : "getformquestionpage.form.clinicalProcessInterestId",
      "short" : "clinicalProcessInterestId",
      "definition" : "Hsa-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID. Hälsoärende är ett begrepp för det som håller samman information i en kärnprocess för en vård- och omsorgstagare, tvärs över organisatoriska enhetsgränser.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.expireDate",
      "path" : "getformquestionpage.form.expireDate",
      "short" : "expireDate",
      "definition" : "expireDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formId",
      "path" : "getformquestionpage.form.formId",
      "short" : "formId",
      "definition" : "Formulärets unika ID (källsystemets unika id/GUID). T.ex. MHV1 har FormID = 3B2DF0C0-BC22-11DE-823D-00155D316606 Måste genereras slumpmässigt för att vara unikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formStatus",
      "path" : "getformquestionpage.form.formStatus",
      "short" : "formStatus",
      "definition" : "formStatus Tillåtna värden: COMPLETED, PENDING_COMPLETION, ONGOING.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/formstatus-vs"
      }
    },
    {
      "id" : "getformquestionpage.form.formTemplate",
      "path" : "getformquestionpage.form.formTemplate",
      "short" : "FormTemplateInfoType",
      "definition" : "formTemplate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.anonymousForm",
      "path" : "getformquestionpage.form.formTemplate.anonymousForm",
      "short" : "anonymousForm",
      "definition" : "Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. Värden True = Tillåter anonym användning. \"SubjectOfCare\" får inte användas. False = Tillåter inte anonym användning. \"SubjectOfCare\" är obligatorisk attribut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.category",
      "path" : "getformquestionpage.form.formTemplate.category",
      "short" : "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration",
      "definition" : "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.code",
      "path" : "getformquestionpage.form.formTemplate.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.code.codeValue",
      "path" : "getformquestionpage.form.formTemplate.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.code.codeSystem",
      "path" : "getformquestionpage.form.formTemplate.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.description",
      "path" : "getformquestionpage.form.formTemplate.description",
      "short" : "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen.",
      "definition" : "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.formCompleteText",
      "path" : "getformquestionpage.form.formTemplate.formCompleteText",
      "short" : "formCompleteText",
      "definition" : "formCompleteText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.formName",
      "path" : "getformquestionpage.form.formTemplate.formName",
      "short" : "Mallens namn. T.ex. Hälsodeklaration Mödravård",
      "definition" : "Mallens namn. T.ex. Hälsodeklaration Mödravård",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.formTitle",
      "path" : "getformquestionpage.form.formTemplate.formTitle",
      "short" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "definition" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.language",
      "path" : "getformquestionpage.form.formTemplate.language",
      "short" : "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005.",
      "definition" : "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.media",
      "path" : "getformquestionpage.form.formTemplate.media",
      "short" : "MediaType",
      "definition" : "media",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.media.mediaURL",
      "path" : "getformquestionpage.form.formTemplate.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.media.mediaType",
      "path" : "getformquestionpage.form.formTemplate.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.media.mediaAlt",
      "path" : "getformquestionpage.form.formTemplate.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.media.mediaCaption",
      "path" : "getformquestionpage.form.formTemplate.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.maxNumberOfQuestions",
      "path" : "getformquestionpage.form.formTemplate.maxNumberOfQuestions",
      "short" : "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10",
      "definition" : "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.minNumberOfQuestions",
      "path" : "getformquestionpage.form.formTemplate.minNumberOfQuestions",
      "short" : "minNumberOfQuestions",
      "definition" : "minNumberOfQuestions",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.maxNumberOfPages",
      "path" : "getformquestionpage.form.formTemplate.maxNumberOfPages",
      "short" : "maxNumberOfPages",
      "definition" : "maxNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.minNumberOfPages",
      "path" : "getformquestionpage.form.formTemplate.minNumberOfPages",
      "short" : "minNumberOfPages",
      "definition" : "minNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.mandatory",
      "path" : "getformquestionpage.form.formTemplate.mandatory",
      "short" : "mandatory",
      "definition" : "Indikerar om formuläret är obligatoriskt att fylla i av användaren. T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. True = obligatoriskt False = Frivilligt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.publishStatus",
      "path" : "getformquestionpage.form.formTemplate.publishStatus",
      "short" : "publishStatus",
      "definition" : "publishStatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.templateVersion",
      "path" : "getformquestionpage.form.formTemplate.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.templateId",
      "path" : "getformquestionpage.form.formTemplate.templateId",
      "short" : "templateId",
      "definition" : "templateId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formTemplate.term",
      "path" : "getformquestionpage.form.formTemplate.term",
      "short" : "term",
      "definition" : "Villkor kopplade till formuläret. T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formText",
      "path" : "getformquestionpage.form.formText",
      "short" : "formText",
      "definition" : "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.healthcare-CareGiver",
      "path" : "getformquestionpage.form.healthcare_CareGiver",
      "short" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting",
      "definition" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.healthcare-MedUnit",
      "path" : "getformquestionpage.form.healthcare_MedUnit",
      "short" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "definition" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.healthcare-facility-CareUnit",
      "path" : "getformquestionpage.form.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.healthcare-facility-CareUnitName",
      "path" : "getformquestionpage.form.healthcare_facility_CareUnitName",
      "short" : "Vårdenhetens namn. T.ex. Testvårdcentral A, Medicinmottagningen USÖ",
      "definition" : "Vårdenhetens namn. T.ex. Testvårdcentral A, Medicinmottagningen USÖ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.healthcare-systemID",
      "path" : "getformquestionpage.form.healthcare_systemID",
      "short" : "Hsa-id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "definition" : "Hsa-id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.keepUntil",
      "path" : "getformquestionpage.form.keepUntil",
      "short" : "keepUntil",
      "definition" : "keepUntil",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage",
      "path" : "getformquestionpage.form.currentPage",
      "short" : "PageType",
      "definition" : "currentPage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks",
      "path" : "getformquestionpage.form.currentPage.questionBlocks",
      "short" : "QuestionBlockType",
      "definition" : "questionBlocks",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.blockNumber",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.blockNumber",
      "short" : "blockNumber",
      "definition" : "Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.description",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.description",
      "short" : "description",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet!! T.ex här skall du lämna information kring din medicinering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.gridConfig",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.gridConfig",
      "short" : "GridConfigType",
      "definition" : "gridConfig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.gridConfig.cols",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.gridConfig.cols",
      "short" : "cols",
      "definition" : "cols",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.gridConfig.rows",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.gridConfig.rows",
      "short" : "rows",
      "definition" : "rows",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.informationURL",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.numberOfQuestions",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.numberOfQuestions",
      "short" : "Antal frågor tillhörande blocket. T.ex. 10",
      "definition" : "Antal frågor tillhörande blocket. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions",
      "short" : "QuestionType",
      "definition" : "questions",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers",
      "short" : "AnswerType",
      "definition" : "answers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerAlternativeNumber",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerAlternativeNumber",
      "short" : "Svarsalternativets id/nummer.",
      "definition" : "Svarsalternativets id/nummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerStatus",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerStatus",
      "short" : "AnswerStatusType",
      "definition" : "answerStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCode",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCode",
      "short" : "resultCode",
      "definition" : "Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod. OK - Transaktion utförd INFO - Transaktion utförd med kommentar. ERROR - Transaktion ej genomförd Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "short" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "definition" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.value",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answers.value",
      "short" : "Patientens/användarens svar.",
      "definition" : "Patientens/användarens svar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives",
      "short" : "AnswerAlternativeType",
      "definition" : "answerAlternatives",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.alternativeValue",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.alternativeValue",
      "short" : "Valbart svarsalternativ.",
      "definition" : "Valbart svarsalternativ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "short" : "Svarsalternativets id.",
      "definition" : "Svarsalternativets id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.answerHelp",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.answerHelp",
      "short" : "Hjälptext till svarsalternativet. (placeholder)",
      "definition" : "Hjälptext till svarsalternativet. (placeholder)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.code",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.code",
      "short" : "CodeType",
      "definition" : "Objekt för att definiera kodverk kopplat till fråga.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeValue",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media",
      "short" : "MediaType",
      "definition" : "Svarsalternativ i bildform.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaType",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerMax",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerMax",
      "short" : "answerMax",
      "definition" : "Specificerar maxvärde för inmatning. (Gäller typ: number, date) T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerMin",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerMin",
      "short" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "definition" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerMaxLength",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerMaxLength",
      "short" : "answerMaxLength",
      "definition" : "Specificerar maxvärdelängd för inmatning. (Gäller typ: number) T.ex: En inmatning (text) får inte vara större än 100 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerPattern",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerPattern",
      "short" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "definition" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerStep",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.answerStep",
      "short" : "answerStep",
      "definition" : "Specificerar giltiga intervall för inmatning. (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 35-40.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.code",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.code.codeValue",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.code.codeSystem",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.description",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.description",
      "short" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "definition" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.gridValue",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.gridValue",
      "short" : "GridValueType",
      "definition" : "gridValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.gridValue.col",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.gridValue.col",
      "short" : "col",
      "definition" : "col",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.gridValue.row",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.gridValue.row",
      "short" : "row",
      "definition" : "row",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.input",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.input",
      "short" : "input",
      "definition" : "Beskriver frågans inmatningstyp. Kodverk inmatningstyp. Text textarea Checkbox Radio Select SelectMultiple Number URL Date and time Date Month Week Time Local date and time Range Image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.inputUnit",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.inputUnit",
      "short" : "inputUnit",
      "definition" : "Typ av enhet. Grundenheter samt härledda SI-enheter beskrivs med dess beteckning. T.ex. km, m, cm, kg, mm Hg etc Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.media",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.media",
      "short" : "MediaType",
      "definition" : "URL till bild. Bilden kan används för att illustrera en fråga. (QuestionType Image)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaURL",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaType",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaAlt",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaCaption",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.informationURL",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.mandatory",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.mandatory",
      "short" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "definition" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.maxNumberOfChoices",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.maxNumberOfChoices",
      "short" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.minNumberOfChoices",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.minNumberOfChoices",
      "short" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionNumber",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionNumber",
      "short" : "questionNumber",
      "definition" : "Frågans nummer i nummer serie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.subject",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.subject",
      "short" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "definition" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionSuperior",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionSuperior",
      "short" : "QuestionSuperiorType",
      "definition" : "questionSuperior",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "short" : "superiorAnswerAlternativeNumbers",
      "definition" : "superiorAnswerAlternativeNumbers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "short" : "superiorQuestionNumber",
      "definition" : "superiorQuestionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.validationEvents",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.validationEvents",
      "short" : "ValidationEventType",
      "definition" : "validationEvents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.validationEvents.event",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.validationEvents.event",
      "short" : "event",
      "definition" : "Följande events är giltiga: mandatory answerMax answerMin answerMaxLength answerPattern maxNumberOfChoises minNumberOfChoises answerSuperior",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.validationEvents.text",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.validationEvents.text",
      "short" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "definition" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionAlign",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionAlign",
      "short" : "questionAlign",
      "definition" : "questionAlign",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionId",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.questions.questionId",
      "short" : "questionId",
      "definition" : "questionId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlocks.subject",
      "path" : "getformquestionpage.form.currentPage.questionBlocks.subject",
      "short" : "Blockets rubrik. T.ex Medicin.",
      "definition" : "Blockets rubrik. T.ex Medicin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.description",
      "path" : "getformquestionpage.form.currentPage.description",
      "short" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.informationURL",
      "path" : "getformquestionpage.form.currentPage.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.lastPage",
      "path" : "getformquestionpage.form.currentPage.lastPage",
      "short" : "lastPage",
      "definition" : "Indikerar om ytterligare frågeblock/page finns. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. True = Indikerar att detta är det sistea frågeblocket/page. False = Indikerar att ytterligare frågeblock/page .",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.subject",
      "path" : "getformquestionpage.form.currentPage.subject",
      "short" : "Sidans rubrik. Information till invånaren/användaren.",
      "definition" : "Sidans rubrik. Information till invånaren/användaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.pageNumber",
      "path" : "getformquestionpage.form.currentPage.pageNumber",
      "short" : "pageNumber",
      "definition" : "Grupperingsbegrepp av sida (page). Sidans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Sida nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages",
      "path" : "getformquestionpage.form.answeredPages",
      "short" : "PageType",
      "definition" : "answeredPages",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks",
      "short" : "QuestionBlockType",
      "definition" : "questionBlocks",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.blockNumber",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.blockNumber",
      "short" : "blockNumber",
      "definition" : "Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.description",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.description",
      "short" : "description",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet!! T.ex här skall du lämna information kring din medicinering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.gridConfig",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.gridConfig",
      "short" : "GridConfigType",
      "definition" : "gridConfig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.gridConfig.cols",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.gridConfig.cols",
      "short" : "cols",
      "definition" : "cols",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.gridConfig.rows",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.gridConfig.rows",
      "short" : "rows",
      "definition" : "rows",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.informationURL",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.numberOfQuestions",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.numberOfQuestions",
      "short" : "Antal frågor tillhörande blocket. T.ex. 10",
      "definition" : "Antal frågor tillhörande blocket. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions",
      "short" : "QuestionType",
      "definition" : "questions",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers",
      "short" : "AnswerType",
      "definition" : "answers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerAlternativeNumber",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerAlternativeNumber",
      "short" : "Svarsalternativets id/nummer.",
      "definition" : "Svarsalternativets id/nummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerStatus",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerStatus",
      "short" : "AnswerStatusType",
      "definition" : "answerStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCode",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCode",
      "short" : "resultCode",
      "definition" : "Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod. OK - Transaktion utförd INFO - Transaktion utförd med kommentar. ERROR - Transaktion ej genomförd Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "short" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "definition" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.value",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answers.value",
      "short" : "Patientens/användarens svar.",
      "definition" : "Patientens/användarens svar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives",
      "short" : "AnswerAlternativeType",
      "definition" : "answerAlternatives",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.alternativeValue",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.alternativeValue",
      "short" : "Valbart svarsalternativ.",
      "definition" : "Valbart svarsalternativ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "short" : "Svarsalternativets id.",
      "definition" : "Svarsalternativets id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.answerHelp",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.answerHelp",
      "short" : "Hjälptext till svarsalternativet. (placeholder)",
      "definition" : "Hjälptext till svarsalternativet. (placeholder)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.code",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.code",
      "short" : "CodeType",
      "definition" : "Objekt för att definiera kodverk kopplat till fråga.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeValue",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media",
      "short" : "MediaType",
      "definition" : "Svarsalternativ i bildform.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaType",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerMax",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerMax",
      "short" : "answerMax",
      "definition" : "Specificerar maxvärde för inmatning. (Gäller typ: number, date) T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerMin",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerMin",
      "short" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "definition" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerMaxLength",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerMaxLength",
      "short" : "answerMaxLength",
      "definition" : "Specificerar maxvärdelängd för inmatning. (Gäller typ: number) T.ex: En inmatning (text) får inte vara större än 100 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerPattern",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerPattern",
      "short" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "definition" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerStep",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.answerStep",
      "short" : "answerStep",
      "definition" : "Specificerar giltiga intervall för inmatning. (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 35-40.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.code",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.code.codeValue",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.code.codeSystem",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.description",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.description",
      "short" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "definition" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.gridValue",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.gridValue",
      "short" : "GridValueType",
      "definition" : "gridValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.gridValue.col",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.gridValue.col",
      "short" : "col",
      "definition" : "col",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.gridValue.row",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.gridValue.row",
      "short" : "row",
      "definition" : "row",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.input",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.input",
      "short" : "input",
      "definition" : "Beskriver frågans inmatningstyp. Kodverk inmatningstyp. Text textarea Checkbox Radio Select SelectMultiple Number URL Date and time Date Month Week Time Local date and time Range Image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.inputUnit",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.inputUnit",
      "short" : "inputUnit",
      "definition" : "Typ av enhet. Grundenheter samt härledda SI-enheter beskrivs med dess beteckning. T.ex. km, m, cm, kg, mm Hg etc Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media",
      "short" : "MediaType",
      "definition" : "URL till bild. Bilden kan används för att illustrera en fråga. (QuestionType Image)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaURL",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaType",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaAlt",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaCaption",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.informationURL",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.mandatory",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.mandatory",
      "short" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "definition" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.maxNumberOfChoices",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.maxNumberOfChoices",
      "short" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.minNumberOfChoices",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.minNumberOfChoices",
      "short" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionNumber",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionNumber",
      "short" : "questionNumber",
      "definition" : "Frågans nummer i nummer serie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.subject",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.subject",
      "short" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "definition" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionSuperior",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionSuperior",
      "short" : "QuestionSuperiorType",
      "definition" : "questionSuperior",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "short" : "superiorAnswerAlternativeNumbers",
      "definition" : "superiorAnswerAlternativeNumbers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "short" : "superiorQuestionNumber",
      "definition" : "superiorQuestionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.validationEvents",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.validationEvents",
      "short" : "ValidationEventType",
      "definition" : "validationEvents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.validationEvents.event",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.validationEvents.event",
      "short" : "event",
      "definition" : "Följande events är giltiga: mandatory answerMax answerMin answerMaxLength answerPattern maxNumberOfChoises minNumberOfChoises answerSuperior",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.validationEvents.text",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.validationEvents.text",
      "short" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "definition" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionAlign",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionAlign",
      "short" : "questionAlign",
      "definition" : "questionAlign",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionId",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.questions.questionId",
      "short" : "questionId",
      "definition" : "questionId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.questionBlocks.subject",
      "path" : "getformquestionpage.form.answeredPages.questionBlocks.subject",
      "short" : "Blockets rubrik. T.ex Medicin.",
      "definition" : "Blockets rubrik. T.ex Medicin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.description",
      "path" : "getformquestionpage.form.answeredPages.description",
      "short" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.informationURL",
      "path" : "getformquestionpage.form.answeredPages.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.lastPage",
      "path" : "getformquestionpage.form.answeredPages.lastPage",
      "short" : "lastPage",
      "definition" : "Indikerar om ytterligare frågeblock/page finns. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. True = Indikerar att detta är det sistea frågeblocket/page. False = Indikerar att ytterligare frågeblock/page .",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.subject",
      "path" : "getformquestionpage.form.answeredPages.subject",
      "short" : "Sidans rubrik. Information till invånaren/användaren.",
      "definition" : "Sidans rubrik. Information till invånaren/användaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.answeredPages.pageNumber",
      "path" : "getformquestionpage.form.answeredPages.pageNumber",
      "short" : "pageNumber",
      "definition" : "Grupperingsbegrepp av sida (page). Sidans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Sida nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.lastSavedDate",
      "path" : "getformquestionpage.form.lastSavedDate",
      "short" : "lastSavedDate",
      "definition" : "lastSavedDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.subjectOfCare",
      "path" : "getformquestionpage.form.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Patienten formuläret avser. Personnummer format yyyymmddnnnn. T.ex. 191212121212. FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.calculationOutcomes",
      "path" : "getformquestionpage.form.calculationOutcomes",
      "short" : "CalculationOutcomeType",
      "definition" : "calculationOutcomes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getformquestionpage.form.calculationOutcomes.calculationId",
      "path" : "getformquestionpage.form.calculationOutcomes.calculationId",
      "short" : "calculationId",
      "definition" : "calculationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.calculationOutcomes.outcome",
      "path" : "getformquestionpage.form.calculationOutcomes.outcome",
      "short" : "outcome",
      "definition" : "outcome",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getformquestionpage.form.calculationOutcomes.errorMessage",
      "path" : "getformquestionpage.form.calculationOutcomes.errorMessage",
      "short" : "errorMessage",
      "definition" : "errorMessage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
