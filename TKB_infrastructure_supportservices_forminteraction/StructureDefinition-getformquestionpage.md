# GetFormQuestionPage - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormQuestionPage**

## Logical Model: GetFormQuestionPage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformquestionpage | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormQuestionPage |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet GetFormQuestionPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2). Returnerar formuläret med den begärda sidan. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getformquestionpage.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformquestionpage",
  "version" : "2.0.0",
  "name" : "GetFormQuestionPage",
  "title" : "GetFormQuestionPage",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2).\nReturnerar formuläret med den begärda sidan.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformquestionpage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformquestionpage",
      "path" : "getformquestionpage",
      "short" : "GetFormQuestionPage",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2).\nReturnerar formuläret med den begärda sidan."
    },
    {
      "id" : "getformquestionpage.form",
      "path" : "getformquestionpage.form",
      "short" : "Formulärobjekt med navigerad sida (FormType)",
      "definition" : "Formuläret med den navigerade sidan. Vid fel (ogiltigt sidnummer/riktning) returneras SOAP-fault.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.formId",
      "path" : "getformquestionpage.form.formId",
      "short" : "Formulärets unika ID",
      "definition" : "Formulärets unika ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.formStatus",
      "path" : "getformquestionpage.form.formStatus",
      "short" : "Formulärets status",
      "definition" : "Formulärets status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/ValueSet/formstatus-vs"
      }
    },
    {
      "id" : "getformquestionpage.form.currentPage",
      "path" : "getformquestionpage.form.currentPage",
      "short" : "Den begärda sidan med frågor",
      "definition" : "Den begärda sidan med frågor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.pageNumber",
      "path" : "getformquestionpage.form.currentPage.pageNumber",
      "short" : "Sidans nummer",
      "definition" : "Sidans nummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.subject",
      "path" : "getformquestionpage.form.currentPage.subject",
      "short" : "Sidans rubrik",
      "definition" : "Sidans rubrik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.lastPage",
      "path" : "getformquestionpage.form.currentPage.lastPage",
      "short" : "True = sista sidan i formuläret",
      "definition" : "True = sista sidan i formuläret",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock",
      "path" : "getformquestionpage.form.currentPage.questionBlock",
      "short" : "Frågegruppering(ar)",
      "definition" : "Frågegruppering(ar)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.blockNumber",
      "path" : "getformquestionpage.form.currentPage.questionBlock.blockNumber",
      "short" : "Blocknummer",
      "definition" : "Blocknummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.subject",
      "path" : "getformquestionpage.form.currentPage.questionBlock.subject",
      "short" : "Blockets rubrik",
      "definition" : "Blockets rubrik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.question",
      "path" : "getformquestionpage.form.currentPage.questionBlock.question",
      "short" : "Frågor i blocket",
      "definition" : "Frågor i blocket",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.question.questionId",
      "path" : "getformquestionpage.form.currentPage.questionBlock.question.questionId",
      "short" : "Frågans unika ID",
      "definition" : "Frågans unika ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.question.questionText",
      "path" : "getformquestionpage.form.currentPage.questionBlock.question.questionText",
      "short" : "Frågetext",
      "definition" : "Frågetext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.question.answer",
      "path" : "getformquestionpage.form.currentPage.questionBlock.question.answer",
      "short" : "Eventuellt befintligt svar",
      "definition" : "Eventuellt befintligt svar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getformquestionpage.form.currentPage.questionBlock.question.answer.answerText",
      "path" : "getformquestionpage.form.currentPage.questionBlock.question.answer.answerText",
      "short" : "Svarstext",
      "definition" : "Svarstext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
