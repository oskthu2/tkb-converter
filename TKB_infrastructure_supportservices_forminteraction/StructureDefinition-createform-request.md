# CreateForm — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateForm — Request**

## Logical Model: CreateForm — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createform-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:CreateFormRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CreateForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2). Skapar och initierar/startar ett formulär. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-createform-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createform-request.csv), [Excel](StructureDefinition-createform-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createform-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createform-request",
  "version" : "2.0.0",
  "name" : "CreateFormRequest",
  "title" : "CreateForm — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CreateForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2).\nSkapar och initierar/startar ett formulär.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/createform-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createform-request",
      "path" : "createform-request",
      "short" : "CreateForm — Request",
      "definition" : "Logisk modell för requestparametrar i CreateForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2).\nSkapar och initierar/startar ett formulär."
    },
    {
      "id" : "createform-request.healthcareFacilityCareUnit",
      "path" : "createform-request.healthcareFacilityCareUnit",
      "short" : "Hsa-Id för vårdenhet som ansvarar för formuläret",
      "definition" : "Hsa-Id för vårdenhet som ansvarar för formuläret",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.subjectOfCare",
      "path" : "createform-request.subjectOfCare",
      "short" : "Personnummer för invånaren (yyyymmddnnnn)",
      "definition" : "FormTemplate-attributet anonymousForm styr om fältet är obligatoriskt eller frivilligt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.templateId",
      "path" : "createform-request.templateId",
      "short" : "Formulärmallets typ-id (KV Malltyp)",
      "definition" : "Formulärmallets typ-id (KV Malltyp)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.templateVersion",
      "path" : "createform-request.templateVersion",
      "short" : "Önskad version av formulärmallt (valfritt)",
      "definition" : "Önskad version av formulärmallt (valfritt)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.clinicalProcessInterestId",
      "path" : "createform-request.clinicalProcessInterestId",
      "short" : "Hälsoärende-id (HSA-id + unik identifierare)",
      "definition" : "Hälsoärende-id (HSA-id + unik identifierare)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.formId",
      "path" : "createform-request.formId",
      "short" : "Formulär-id genererat av konsumerande system (GUID). Om ej angivet genererar producenten.",
      "definition" : "Formulär-id genererat av konsumerande system (GUID). Om ej angivet genererar producenten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createform-request.formText",
      "path" : "createform-request.formText",
      "short" : "Unik text för formuläret, t.ex. Hälsoundersökning inför besök X",
      "definition" : "Unik text för formuläret, t.ex. Hälsoundersökning inför besök X",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
