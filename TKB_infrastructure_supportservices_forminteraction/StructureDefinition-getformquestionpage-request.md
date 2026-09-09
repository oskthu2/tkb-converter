# GetFormQuestionPage — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormQuestionPage — Request**

## Logical Model: GetFormQuestionPage — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformquestionpage-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormQuestionPageRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormQuestionPage (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2). Hoppa/navigera framåt eller bakåt i ett formulär. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getformquestionpage-request.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformquestionpage-request",
  "version" : "2.0.0",
  "name" : "GetFormQuestionPageRequest",
  "title" : "GetFormQuestionPage — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2).\nHoppa/navigera framåt eller bakåt i ett formulär.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformquestionpage-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformquestionpage-request",
      "path" : "getformquestionpage-request",
      "short" : "GetFormQuestionPage — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormQuestionPage\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2).\nHoppa/navigera framåt eller bakåt i ett formulär."
    },
    {
      "id" : "getformquestionpage-request.formId",
      "path" : "getformquestionpage-request.formId",
      "short" : "Formulärets unika ID (GUID)",
      "definition" : "Formulärets unika ID (GUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage-request.pageNumber",
      "path" : "getformquestionpage-request.pageNumber",
      "short" : "Nummer på sidan navigering utgår ifrån. Ange 0 + FORWARD för första sidan, 0 + BACK för sista sidan.",
      "definition" : "Nummer på sidan navigering utgår ifrån. Ange 0 + FORWARD för första sidan, 0 + BACK för sista sidan.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getformquestionpage-request.direction",
      "path" : "getformquestionpage-request.direction",
      "short" : "Riktning: FORWARD eller BACK",
      "definition" : "BACK ej tillåtet om PageNumber = 1. FORWARD ej tillåtet om LastPage = true.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformquestionpage-request.subjectOfCare",
      "path" : "getformquestionpage-request.subjectOfCare",
      "short" : "Invånarens personnummer (yyyymmddnnnn)",
      "definition" : "Invånarens personnummer (yyyymmddnnnn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
