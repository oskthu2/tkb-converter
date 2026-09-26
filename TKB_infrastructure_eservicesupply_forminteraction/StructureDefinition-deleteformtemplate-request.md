# DeleteFormTemplate — Request - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteFormTemplate — Request**

## Logical Model: DeleteFormTemplate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/deleteformtemplate-request | *Version*:2.1 |
| Draft as of 2026-09-26 | *Computable Name*:DeleteFormTemplateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i DeleteFormTemplate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-deleteformtemplate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteformtemplate-request.csv), [Excel](StructureDefinition-deleteformtemplate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteformtemplate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/deleteformtemplate-request",
  "version" : "2.1",
  "name" : "DeleteFormTemplateRequest",
  "title" : "DeleteFormTemplate — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:31:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i DeleteFormTemplate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/deleteformtemplate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteformtemplate-request",
      "path" : "deleteformtemplate-request",
      "short" : "DeleteFormTemplate — Request",
      "definition" : "Logisk modell för requestparametrar i DeleteFormTemplate."
    },
    {
      "id" : "deleteformtemplate-request.templateId",
      "path" : "deleteformtemplate-request.templateId",
      "short" : "Mall-id",
      "definition" : "Unikt id för formulärmallen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteformtemplate-request.templateVersion",
      "path" : "deleteformtemplate-request.templateVersion",
      "short" : "Mallversion",
      "definition" : "Version av formulärmall som ska makuleras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "deleteformtemplate-request.healthCareFacilityUnit",
      "path" : "deleteformtemplate-request.healthCareFacilityUnit",
      "short" : "Vårdenhet",
      "definition" : "HSA-id för den vårdenhet som är ägare till formulärmallen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
