# GetForm - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetForm**

## Logical Model: GetForm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getform | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:GetForm |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForm:2). Representerar responsens informationsstruktur — returnerar ett specifikt formulär med aktuell sida. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getform.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getform.csv), [Excel](StructureDefinition-getform.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getform",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getform",
  "version" : "2.1",
  "name" : "GetForm",
  "title" : "GetForm",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForm:2).\nRepresenterar responsens informationsstruktur — returnerar ett specifikt formulär med aktuell sida.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getform",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getform",
      "path" : "getform",
      "short" : "GetForm",
      "definition" : "Logisk modell för tjänstekontraktet GetForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForm:2).\nRepresenterar responsens informationsstruktur — returnerar ett specifikt formulär med aktuell sida."
    },
    {
      "id" : "getform.form",
      "path" : "getform.form",
      "short" : "FormType",
      "definition" : "form",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.createdDateTime",
      "path" : "getform.form.createdDateTime",
      "short" : "createdDateTime",
      "definition" : "createdDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.clinicalProcessInterestId",
      "path" : "getform.form.clinicalProcessInterestId",
      "short" : "clinicalProcessInterestId",
      "definition" : "Hsa-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID. Hälsoärende är ett begrepp för det som håller samman information i en kärnprocess för en vård- och omsorgstagare, tvärs över organisatoriska enhetsgränser.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.expireDate",
      "path" : "getform.form.expireDate",
      "short" : "expireDate",
      "definition" : "expireDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formId",
      "path" : "getform.form.formId",
      "short" : "formId",
      "definition" : "Formulärets unika ID (källsystemets unika id/GUID). T.ex. MHV1 har FormID = 3B2DF0C0-BC22-11DE-823D-00155D316606 Måste genereras slumpmässigt för att vara unikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formStatus",
      "path" : "getform.form.formStatus",
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
      "id" : "getform.form.formTemplate",
      "path" : "getform.form.formTemplate",
      "short" : "FormTemplateInfoType",
      "definition" : "formTemplate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.formTemplate.anonymousForm",
      "path" : "getform.form.formTemplate.anonymousForm",
      "short" : "anonymousForm",
      "definition" : "Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. Värden True = Tillåter anonym användning. \"SubjectOfCare\" får inte användas. False = Tillåter inte anonym användning. \"SubjectOfCare\" är obligatorisk attribut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getform.form.formTemplate.category",
      "path" : "getform.form.formTemplate.category",
      "short" : "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration",
      "definition" : "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.code",
      "path" : "getform.form.formTemplate.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.formTemplate.code.codeValue",
      "path" : "getform.form.formTemplate.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.code.codeSystem",
      "path" : "getform.form.formTemplate.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.description",
      "path" : "getform.form.formTemplate.description",
      "short" : "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen.",
      "definition" : "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.formCompleteText",
      "path" : "getform.form.formTemplate.formCompleteText",
      "short" : "formCompleteText",
      "definition" : "formCompleteText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.formName",
      "path" : "getform.form.formTemplate.formName",
      "short" : "Mallens namn. T.ex. Hälsodeklaration Mödravård",
      "definition" : "Mallens namn. T.ex. Hälsodeklaration Mödravård",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.formTitle",
      "path" : "getform.form.formTemplate.formTitle",
      "short" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "definition" : "Mallens/formulärets rubrik. Används på formulärets introduktionssida.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.language",
      "path" : "getform.form.formTemplate.language",
      "short" : "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005.",
      "definition" : "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.media",
      "path" : "getform.form.formTemplate.media",
      "short" : "MediaType",
      "definition" : "media",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.formTemplate.media.mediaURL",
      "path" : "getform.form.formTemplate.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.media.mediaType",
      "path" : "getform.form.formTemplate.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.media.mediaAlt",
      "path" : "getform.form.formTemplate.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.media.mediaCaption",
      "path" : "getform.form.formTemplate.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.maxNumberOfQuestions",
      "path" : "getform.form.formTemplate.maxNumberOfQuestions",
      "short" : "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10",
      "definition" : "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.formTemplate.minNumberOfQuestions",
      "path" : "getform.form.formTemplate.minNumberOfQuestions",
      "short" : "minNumberOfQuestions",
      "definition" : "minNumberOfQuestions",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.formTemplate.maxNumberOfPages",
      "path" : "getform.form.formTemplate.maxNumberOfPages",
      "short" : "maxNumberOfPages",
      "definition" : "maxNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.formTemplate.minNumberOfPages",
      "path" : "getform.form.formTemplate.minNumberOfPages",
      "short" : "minNumberOfPages",
      "definition" : "minNumberOfPages",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.formTemplate.mandatory",
      "path" : "getform.form.formTemplate.mandatory",
      "short" : "mandatory",
      "definition" : "Indikerar om formuläret är obligatoriskt att fylla i av användaren. T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. True = obligatoriskt False = Frivilligt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getform.form.formTemplate.publishStatus",
      "path" : "getform.form.formTemplate.publishStatus",
      "short" : "publishStatus",
      "definition" : "publishStatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.templateVersion",
      "path" : "getform.form.formTemplate.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.formTemplate.templateId",
      "path" : "getform.form.formTemplate.templateId",
      "short" : "templateId",
      "definition" : "templateId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formTemplate.term",
      "path" : "getform.form.formTemplate.term",
      "short" : "term",
      "definition" : "Villkor kopplade till formuläret. T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.formText",
      "path" : "getform.form.formText",
      "short" : "formText",
      "definition" : "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.healthcare-CareGiver",
      "path" : "getform.form.healthcare_CareGiver",
      "short" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting",
      "definition" : "Ansvarig vårdgivare (huvudman). T.ex. Landsting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.healthcare-MedUnit",
      "path" : "getform.form.healthcare_MedUnit",
      "short" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "definition" : "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.healthcare-facility-CareUnit",
      "path" : "getform.form.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.healthcare-facility-CareUnitName",
      "path" : "getform.form.healthcare_facility_CareUnitName",
      "short" : "Vårdenhetens namn. T.ex. Testvårdcentral A, Medicinmottagningen USÖ",
      "definition" : "Vårdenhetens namn. T.ex. Testvårdcentral A, Medicinmottagningen USÖ",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.healthcare-systemID",
      "path" : "getform.form.healthcare_systemID",
      "short" : "Hsa-id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "definition" : "Hsa-id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.keepUntil",
      "path" : "getform.form.keepUntil",
      "short" : "keepUntil",
      "definition" : "keepUntil",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage",
      "path" : "getform.form.currentPage",
      "short" : "PageType",
      "definition" : "currentPage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks",
      "path" : "getform.form.currentPage.questionBlocks",
      "short" : "QuestionBlockType",
      "definition" : "questionBlocks",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.blockNumber",
      "path" : "getform.form.currentPage.questionBlocks.blockNumber",
      "short" : "blockNumber",
      "definition" : "Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.description",
      "path" : "getform.form.currentPage.questionBlocks.description",
      "short" : "description",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet!! T.ex här skall du lämna information kring din medicinering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.gridConfig",
      "path" : "getform.form.currentPage.questionBlocks.gridConfig",
      "short" : "GridConfigType",
      "definition" : "gridConfig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.gridConfig.cols",
      "path" : "getform.form.currentPage.questionBlocks.gridConfig.cols",
      "short" : "cols",
      "definition" : "cols",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.gridConfig.rows",
      "path" : "getform.form.currentPage.questionBlocks.gridConfig.rows",
      "short" : "rows",
      "definition" : "rows",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.informationURL",
      "path" : "getform.form.currentPage.questionBlocks.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.numberOfQuestions",
      "path" : "getform.form.currentPage.questionBlocks.numberOfQuestions",
      "short" : "Antal frågor tillhörande blocket. T.ex. 10",
      "definition" : "Antal frågor tillhörande blocket. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions",
      "path" : "getform.form.currentPage.questionBlocks.questions",
      "short" : "QuestionType",
      "definition" : "questions",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answers",
      "path" : "getform.form.currentPage.questionBlocks.questions.answers",
      "short" : "AnswerType",
      "definition" : "answers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answers.answerAlternativeNumber",
      "path" : "getform.form.currentPage.questionBlocks.questions.answers.answerAlternativeNumber",
      "short" : "Svarsalternativets id/nummer.",
      "definition" : "Svarsalternativets id/nummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answers.answerStatus",
      "path" : "getform.form.currentPage.questionBlocks.questions.answers.answerStatus",
      "short" : "AnswerStatusType",
      "definition" : "answerStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCode",
      "path" : "getform.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCode",
      "short" : "resultCode",
      "definition" : "Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod. OK - Transaktion utförd INFO - Transaktion utförd med kommentar. ERROR - Transaktion ej genomförd Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "path" : "getform.form.currentPage.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "short" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "definition" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answers.value",
      "path" : "getform.form.currentPage.questionBlocks.questions.answers.value",
      "short" : "Patientens/användarens svar.",
      "definition" : "Patientens/användarens svar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives",
      "short" : "AnswerAlternativeType",
      "definition" : "answerAlternatives",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.alternativeValue",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.alternativeValue",
      "short" : "Valbart svarsalternativ.",
      "definition" : "Valbart svarsalternativ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "short" : "Svarsalternativets id.",
      "definition" : "Svarsalternativets id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.answerHelp",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.answerHelp",
      "short" : "Hjälptext till svarsalternativet. (placeholder)",
      "definition" : "Hjälptext till svarsalternativet. (placeholder)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.code",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.code",
      "short" : "CodeType",
      "definition" : "Objekt för att definiera kodverk kopplat till fråga.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeValue",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media",
      "short" : "MediaType",
      "definition" : "Svarsalternativ i bildform.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaType",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerMax",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerMax",
      "short" : "answerMax",
      "definition" : "Specificerar maxvärde för inmatning. (Gäller typ: number, date) T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerMin",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerMin",
      "short" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "definition" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerMaxLength",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerMaxLength",
      "short" : "answerMaxLength",
      "definition" : "Specificerar maxvärdelängd för inmatning. (Gäller typ: number) T.ex: En inmatning (text) får inte vara större än 100 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerPattern",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerPattern",
      "short" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "definition" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.answerStep",
      "path" : "getform.form.currentPage.questionBlocks.questions.answerStep",
      "short" : "answerStep",
      "definition" : "Specificerar giltiga intervall för inmatning. (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 35-40.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.code",
      "path" : "getform.form.currentPage.questionBlocks.questions.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.code.codeValue",
      "path" : "getform.form.currentPage.questionBlocks.questions.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.code.codeSystem",
      "path" : "getform.form.currentPage.questionBlocks.questions.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.description",
      "path" : "getform.form.currentPage.questionBlocks.questions.description",
      "short" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "definition" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.gridValue",
      "path" : "getform.form.currentPage.questionBlocks.questions.gridValue",
      "short" : "GridValueType",
      "definition" : "gridValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.gridValue.col",
      "path" : "getform.form.currentPage.questionBlocks.questions.gridValue.col",
      "short" : "col",
      "definition" : "col",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.gridValue.row",
      "path" : "getform.form.currentPage.questionBlocks.questions.gridValue.row",
      "short" : "row",
      "definition" : "row",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.input",
      "path" : "getform.form.currentPage.questionBlocks.questions.input",
      "short" : "input",
      "definition" : "Beskriver frågans inmatningstyp. Kodverk inmatningstyp. Text textarea Checkbox Radio Select SelectMultiple Number URL Date and time Date Month Week Time Local date and time Range Image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.inputUnit",
      "path" : "getform.form.currentPage.questionBlocks.questions.inputUnit",
      "short" : "inputUnit",
      "definition" : "Typ av enhet. Grundenheter samt härledda SI-enheter beskrivs med dess beteckning. T.ex. km, m, cm, kg, mm Hg etc Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.media",
      "path" : "getform.form.currentPage.questionBlocks.questions.media",
      "short" : "MediaType",
      "definition" : "URL till bild. Bilden kan används för att illustrera en fråga. (QuestionType Image)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.media.mediaURL",
      "path" : "getform.form.currentPage.questionBlocks.questions.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.media.mediaType",
      "path" : "getform.form.currentPage.questionBlocks.questions.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.media.mediaAlt",
      "path" : "getform.form.currentPage.questionBlocks.questions.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.media.mediaCaption",
      "path" : "getform.form.currentPage.questionBlocks.questions.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.informationURL",
      "path" : "getform.form.currentPage.questionBlocks.questions.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.mandatory",
      "path" : "getform.form.currentPage.questionBlocks.questions.mandatory",
      "short" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "definition" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.maxNumberOfChoices",
      "path" : "getform.form.currentPage.questionBlocks.questions.maxNumberOfChoices",
      "short" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.minNumberOfChoices",
      "path" : "getform.form.currentPage.questionBlocks.questions.minNumberOfChoices",
      "short" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.questionNumber",
      "path" : "getform.form.currentPage.questionBlocks.questions.questionNumber",
      "short" : "questionNumber",
      "definition" : "Frågans nummer i nummer serie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.subject",
      "path" : "getform.form.currentPage.questionBlocks.questions.subject",
      "short" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "definition" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.questionSuperior",
      "path" : "getform.form.currentPage.questionBlocks.questions.questionSuperior",
      "short" : "QuestionSuperiorType",
      "definition" : "questionSuperior",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "path" : "getform.form.currentPage.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "short" : "superiorAnswerAlternativeNumbers",
      "definition" : "superiorAnswerAlternativeNumbers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "path" : "getform.form.currentPage.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "short" : "superiorQuestionNumber",
      "definition" : "superiorQuestionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.validationEvents",
      "path" : "getform.form.currentPage.questionBlocks.questions.validationEvents",
      "short" : "ValidationEventType",
      "definition" : "validationEvents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.validationEvents.event",
      "path" : "getform.form.currentPage.questionBlocks.questions.validationEvents.event",
      "short" : "event",
      "definition" : "Följande events är giltiga: mandatory answerMax answerMin answerMaxLength answerPattern maxNumberOfChoises minNumberOfChoises answerSuperior",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.validationEvents.text",
      "path" : "getform.form.currentPage.questionBlocks.questions.validationEvents.text",
      "short" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "definition" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.questionAlign",
      "path" : "getform.form.currentPage.questionBlocks.questions.questionAlign",
      "short" : "questionAlign",
      "definition" : "questionAlign",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.questions.questionId",
      "path" : "getform.form.currentPage.questionBlocks.questions.questionId",
      "short" : "questionId",
      "definition" : "questionId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.questionBlocks.subject",
      "path" : "getform.form.currentPage.questionBlocks.subject",
      "short" : "Blockets rubrik. T.ex Medicin.",
      "definition" : "Blockets rubrik. T.ex Medicin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.description",
      "path" : "getform.form.currentPage.description",
      "short" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.informationURL",
      "path" : "getform.form.currentPage.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.lastPage",
      "path" : "getform.form.currentPage.lastPage",
      "short" : "lastPage",
      "definition" : "Indikerar om ytterligare frågeblock/page finns. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. True = Indikerar att detta är det sistea frågeblocket/page. False = Indikerar att ytterligare frågeblock/page .",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getform.form.currentPage.subject",
      "path" : "getform.form.currentPage.subject",
      "short" : "Sidans rubrik. Information till invånaren/användaren.",
      "definition" : "Sidans rubrik. Information till invånaren/användaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.currentPage.pageNumber",
      "path" : "getform.form.currentPage.pageNumber",
      "short" : "pageNumber",
      "definition" : "Grupperingsbegrepp av sida (page). Sidans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Sida nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages",
      "path" : "getform.form.answeredPages",
      "short" : "PageType",
      "definition" : "answeredPages",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks",
      "path" : "getform.form.answeredPages.questionBlocks",
      "short" : "QuestionBlockType",
      "definition" : "questionBlocks",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.blockNumber",
      "path" : "getform.form.answeredPages.questionBlocks.blockNumber",
      "short" : "blockNumber",
      "definition" : "Grupperingsbegrepp av frågor. Frågans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.description",
      "path" : "getform.form.answeredPages.questionBlocks.description",
      "short" : "description",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet!! T.ex här skall du lämna information kring din medicinering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.gridConfig",
      "path" : "getform.form.answeredPages.questionBlocks.gridConfig",
      "short" : "GridConfigType",
      "definition" : "gridConfig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.gridConfig.cols",
      "path" : "getform.form.answeredPages.questionBlocks.gridConfig.cols",
      "short" : "cols",
      "definition" : "cols",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.gridConfig.rows",
      "path" : "getform.form.answeredPages.questionBlocks.gridConfig.rows",
      "short" : "rows",
      "definition" : "rows",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.informationURL",
      "path" : "getform.form.answeredPages.questionBlocks.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.numberOfQuestions",
      "path" : "getform.form.answeredPages.questionBlocks.numberOfQuestions",
      "short" : "Antal frågor tillhörande blocket. T.ex. 10",
      "definition" : "Antal frågor tillhörande blocket. T.ex. 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions",
      "path" : "getform.form.answeredPages.questionBlocks.questions",
      "short" : "QuestionType",
      "definition" : "questions",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answers",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answers",
      "short" : "AnswerType",
      "definition" : "answers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answers.answerAlternativeNumber",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answers.answerAlternativeNumber",
      "short" : "Svarsalternativets id/nummer.",
      "definition" : "Svarsalternativets id/nummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answers.answerStatus",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answers.answerStatus",
      "short" : "AnswerStatusType",
      "definition" : "answerStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCode",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCode",
      "short" : "resultCode",
      "definition" : "Signalerar om frågan är ifylld på ett felaktigt sätt. Felkod. OK - Transaktion utförd INFO - Transaktion utförd med kommentar. ERROR - Transaktion ej genomförd Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answers.answerStatus.resultCodeText",
      "short" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "definition" : "Felmeddelande, förklarande text. Vid INFO eller ERROR. T.ex. INFO – Medtag legitimation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answers.value",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answers.value",
      "short" : "Patientens/användarens svar.",
      "definition" : "Patientens/användarens svar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives",
      "short" : "AnswerAlternativeType",
      "definition" : "answerAlternatives",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.alternativeValue",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.alternativeValue",
      "short" : "Valbart svarsalternativ.",
      "definition" : "Valbart svarsalternativ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.answerAlternativeNumber",
      "short" : "Svarsalternativets id.",
      "definition" : "Svarsalternativets id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.answerHelp",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.answerHelp",
      "short" : "Hjälptext till svarsalternativet. (placeholder)",
      "definition" : "Hjälptext till svarsalternativet. (placeholder)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.code",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.code",
      "short" : "CodeType",
      "definition" : "Objekt för att definiera kodverk kopplat till fråga.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeValue",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media",
      "short" : "MediaType",
      "definition" : "Svarsalternativ i bildform.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaType",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerAlternatives.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerMax",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerMax",
      "short" : "answerMax",
      "definition" : "Specificerar maxvärde för inmatning. (Gäller typ: number, date) T.ex: Ett värde får inte överskrida 10. Blodtryck, rimlighetsparameter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerMin",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerMin",
      "short" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "definition" : "Specificerar minvärde för inmatning. (Gäller typ: number, date)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerMaxLength",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerMaxLength",
      "short" : "answerMaxLength",
      "definition" : "Specificerar maxvärdelängd för inmatning. (Gäller typ: number) T.ex: En inmatning (text) får inte vara större än 100 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerPattern",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerPattern",
      "short" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "definition" : "Inmatningsvalidering (Regular expresson). T.ex: pattern=\"[A-z]{3}\" tillåter endast 3 teckan A-z.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.answerStep",
      "path" : "getform.form.answeredPages.questionBlocks.questions.answerStep",
      "short" : "answerStep",
      "definition" : "Specificerar giltiga intervall för inmatning. (Gäller typ: number, range, date, datetime, datetime-local, month, time och week) T.ex: Skalningsfaktor för en ”slide” kontroll. Ange värde för temperatur 35-40.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.code",
      "path" : "getform.form.answeredPages.questionBlocks.questions.code",
      "short" : "CodeType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.code.codeValue",
      "path" : "getform.form.answeredPages.questionBlocks.questions.code.codeValue",
      "short" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "definition" : "Kod som används (Kodverk).Kod identifieras av \"codeSystem\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.code.codeSystem",
      "path" : "getform.form.answeredPages.questionBlocks.questions.code.codeSystem",
      "short" : "Identifierar vilket kodverk som används.",
      "definition" : "Identifierar vilket kodverk som används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.description",
      "path" : "getform.form.answeredPages.questionBlocks.questions.description",
      "short" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "definition" : "Frågans beskrivande text eller instruktion till användaren/patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.gridValue",
      "path" : "getform.form.answeredPages.questionBlocks.questions.gridValue",
      "short" : "GridValueType",
      "definition" : "gridValue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.gridValue.col",
      "path" : "getform.form.answeredPages.questionBlocks.questions.gridValue.col",
      "short" : "col",
      "definition" : "col",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.gridValue.row",
      "path" : "getform.form.answeredPages.questionBlocks.questions.gridValue.row",
      "short" : "row",
      "definition" : "row",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.input",
      "path" : "getform.form.answeredPages.questionBlocks.questions.input",
      "short" : "input",
      "definition" : "Beskriver frågans inmatningstyp. Kodverk inmatningstyp. Text textarea Checkbox Radio Select SelectMultiple Number URL Date and time Date Month Week Time Local date and time Range Image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.inputUnit",
      "path" : "getform.form.answeredPages.questionBlocks.questions.inputUnit",
      "short" : "inputUnit",
      "definition" : "Typ av enhet. Grundenheter samt härledda SI-enheter beskrivs med dess beteckning. T.ex. km, m, cm, kg, mm Hg etc Måttenheter enligt SI-systemet. SWEDAC (STAFS 2009:26)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.media",
      "path" : "getform.form.answeredPages.questionBlocks.questions.media",
      "short" : "MediaType",
      "definition" : "URL till bild. Bilden kan används för att illustrera en fråga. (QuestionType Image)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.media.mediaURL",
      "path" : "getform.form.answeredPages.questionBlocks.questions.media.mediaURL",
      "short" : "URL eller adress till media.",
      "definition" : "URL eller adress till media.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.media.mediaType",
      "path" : "getform.form.answeredPages.questionBlocks.questions.media.mediaType",
      "short" : "Giltiga MIME typer.",
      "definition" : "Giltiga MIME typer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.media.mediaAlt",
      "path" : "getform.form.answeredPages.questionBlocks.questions.media.mediaAlt",
      "short" : "alternativ text som beskriver det element som attributet hör till",
      "definition" : "alternativ text som beskriver det element som attributet hör till",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.media.mediaCaption",
      "path" : "getform.form.answeredPages.questionBlocks.questions.media.mediaCaption",
      "short" : "URL eller adress till undertext.",
      "definition" : "URL eller adress till undertext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.informationURL",
      "path" : "getform.form.answeredPages.questionBlocks.questions.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.mandatory",
      "path" : "getform.form.answeredPages.questionBlocks.questions.mandatory",
      "short" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "definition" : "Indikerar om frågan är obligatorisk. True = obligatorisk fråga False = Frivillig fråga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.maxNumberOfChoices",
      "path" : "getform.form.answeredPages.questionBlocks.questions.maxNumberOfChoices",
      "short" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar max antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.minNumberOfChoices",
      "path" : "getform.form.answeredPages.questionBlocks.questions.minNumberOfChoices",
      "short" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "definition" : "Indikerar min. antal värden som användaren får välja vid checkbox/multivärde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.questionNumber",
      "path" : "getform.form.answeredPages.questionBlocks.questions.questionNumber",
      "short" : "questionNumber",
      "definition" : "Frågans nummer i nummer serie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Fråga nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.subject",
      "path" : "getform.form.answeredPages.questionBlocks.questions.subject",
      "short" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "definition" : "Frågans rubrik. T.ex Ange din blodgrupp.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.questionSuperior",
      "path" : "getform.form.answeredPages.questionBlocks.questions.questionSuperior",
      "short" : "QuestionSuperiorType",
      "definition" : "questionSuperior",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "path" : "getform.form.answeredPages.questionBlocks.questions.questionSuperior.superiorAnswerAlternativeNumbers",
      "short" : "superiorAnswerAlternativeNumbers",
      "definition" : "superiorAnswerAlternativeNumbers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "path" : "getform.form.answeredPages.questionBlocks.questions.questionSuperior.superiorQuestionNumber",
      "short" : "superiorQuestionNumber",
      "definition" : "superiorQuestionNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.validationEvents",
      "path" : "getform.form.answeredPages.questionBlocks.questions.validationEvents",
      "short" : "ValidationEventType",
      "definition" : "validationEvents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.validationEvents.event",
      "path" : "getform.form.answeredPages.questionBlocks.questions.validationEvents.event",
      "short" : "event",
      "definition" : "Följande events är giltiga: mandatory answerMax answerMin answerMaxLength answerPattern maxNumberOfChoises minNumberOfChoises answerSuperior",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.validationEvents.text",
      "path" : "getform.form.answeredPages.questionBlocks.questions.validationEvents.text",
      "short" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "definition" : "Valideringstext/meddelande. Informationen skall presenteras för användaren vid valideringsfel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.questionAlign",
      "path" : "getform.form.answeredPages.questionBlocks.questions.questionAlign",
      "short" : "questionAlign",
      "definition" : "questionAlign",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.questions.questionId",
      "path" : "getform.form.answeredPages.questionBlocks.questions.questionId",
      "short" : "questionId",
      "definition" : "questionId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.questionBlocks.subject",
      "path" : "getform.form.answeredPages.questionBlocks.subject",
      "short" : "Blockets rubrik. T.ex Medicin.",
      "definition" : "Blockets rubrik. T.ex Medicin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.description",
      "path" : "getform.form.answeredPages.description",
      "short" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "definition" : "Beskrivande text. Stöder kodverk ”DocBook” Se tidbokningskontraktet för formatering (Todo).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.informationURL",
      "path" : "getform.form.answeredPages.informationURL",
      "short" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "definition" : "URL till ytterligare/relevant information. Länk till publik information utan krav på autentisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.lastPage",
      "path" : "getform.form.answeredPages.lastPage",
      "short" : "lastPage",
      "definition" : "Indikerar om ytterligare frågeblock/page finns. Detta ger indikation för konsumerande system att presentera en knapp för att ”Avsluta och skicka” formuläret. True = Indikerar att detta är det sistea frågeblocket/page. False = Indikerar att ytterligare frågeblock/page .",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getform.form.answeredPages.subject",
      "path" : "getform.form.answeredPages.subject",
      "short" : "Sidans rubrik. Information till invånaren/användaren.",
      "definition" : "Sidans rubrik. Information till invånaren/användaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.answeredPages.pageNumber",
      "path" : "getform.form.answeredPages.pageNumber",
      "short" : "pageNumber",
      "definition" : "Grupperingsbegrepp av sida (page). Sidans nummer i nummerserie. Används för att indikera hur långt användaren har kommit i formuläret. T.ex Sida nummer 1 (av 10).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getform.form.lastSavedDate",
      "path" : "getform.form.lastSavedDate",
      "short" : "lastSavedDate",
      "definition" : "lastSavedDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.subjectOfCare",
      "path" : "getform.form.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Patienten formuläret avser. Personnummer format yyyymmddnnnn. T.ex. 191212121212. FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.calculationOutcomes",
      "path" : "getform.form.calculationOutcomes",
      "short" : "CalculationOutcomeType",
      "definition" : "calculationOutcomes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getform.form.calculationOutcomes.calculationId",
      "path" : "getform.form.calculationOutcomes.calculationId",
      "short" : "calculationId",
      "definition" : "calculationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getform.form.calculationOutcomes.outcome",
      "path" : "getform.form.calculationOutcomes.outcome",
      "short" : "outcome",
      "definition" : "outcome",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getform.form.calculationOutcomes.errorMessage",
      "path" : "getform.form.calculationOutcomes.errorMessage",
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
