# GetFormTemplate — Request - infrastructure: eservicesupply: forminteraction v2.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormTemplate — Request**

## Logical Model: GetFormTemplate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate-request | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:GetFormTemplateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormTemplate. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-getformtemplate-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformtemplate-request.csv), [Excel](StructureDefinition-getformtemplate-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformtemplate-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate-request",
  "version" : "2.1",
  "name" : "GetFormTemplateRequest",
  "title" : "GetFormTemplate — Request",
  "status" : "active",
  "date" : "2026-11-09T03:38:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormTemplate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformtemplate-request",
      "path" : "getformtemplate-request",
      "short" : "GetFormTemplate — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormTemplate.",
      "constraint" : [{
        "key" : "getformtemplate-request-careunit-or-templateid",
        "severity" : "error",
        "human" : "Minst ett av healthcare_facility_CareUnit och templateId ska anges: utelämnas healthcare_facility_CareUnit är templateId obligatorisk.",
        "expression" : "healthcare_facility_CareUnit.exists() or templateId.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/getformtemplate-request"
      }]
    },
    {
      "id" : "getformtemplate-request.healthcare-facility-CareUnit",
      "path" : "getformtemplate-request.healthcare_facility_CareUnit",
      "short" : "healthcare_facility_CareUnit",
      "definition" : "healthcare_facility_CareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplate-request.templateId",
      "path" : "getformtemplate-request.templateId",
      "short" : "templateId",
      "definition" : "templateId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplate-request.templateVersion",
      "path" : "getformtemplate-request.templateVersion",
      "short" : "templateVersion",
      "definition" : "templateVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
