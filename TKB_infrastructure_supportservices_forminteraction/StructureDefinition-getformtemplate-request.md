# GetFormTemplate — Request - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormTemplate — Request**

## Logical Model: GetFormTemplate — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplate-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetFormTemplateRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormTemplate (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2). Hämtar en specifik formulärmall inkl. alla sidor och frågor. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getformtemplate-request.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplate-request",
  "version" : "2.0.0",
  "name" : "GetFormTemplateRequest",
  "title" : "GetFormTemplate — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormTemplate\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2).\nHämtar en specifik formulärmall inkl. alla sidor och frågor.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplate-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformtemplate-request",
      "path" : "getformtemplate-request",
      "short" : "GetFormTemplate — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormTemplate\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2).\nHämtar en specifik formulärmall inkl. alla sidor och frågor."
    },
    {
      "id" : "getformtemplate-request.healthcareFacilityCareUnit",
      "path" : "getformtemplate-request.healthcareFacilityCareUnit",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplate-request.templateId",
      "path" : "getformtemplate-request.templateId",
      "short" : "Typ av formulärmall (KV Malltyp)",
      "definition" : "Typ av formulärmall (KV Malltyp)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplate-request.templateVersion",
      "path" : "getformtemplate-request.templateVersion",
      "short" : "Önskad version",
      "definition" : "Önskad version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
