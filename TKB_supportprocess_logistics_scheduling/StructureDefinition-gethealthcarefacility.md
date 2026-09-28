# GetHealthcareFacility — Response - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthcareFacility — Response**

## Logical Model: GetHealthcareFacility — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacility | *Version*:2.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetHealthcareFacility |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthcareFacility (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gethealthcarefacility.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcarefacility.csv), [Excel](StructureDefinition-gethealthcarefacility.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcarefacility",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacility",
  "version" : "2.0.0",
  "name" : "GetHealthcareFacility",
  "title" : "GetHealthcareFacility — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthcareFacility\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacility",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcarefacility",
      "path" : "gethealthcarefacility",
      "short" : "GetHealthcareFacility — Response",
      "definition" : "Logisk modell för svaret i GetHealthcareFacility\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityResponseType)."
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility",
      "path" : "gethealthcarefacility.healthcareFacility",
      "short" : "healthcareFacility",
      "definition" : "healthcareFacility",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.HSAId",
      "path" : "gethealthcarefacility.healthcareFacility.HSAId",
      "short" : "HSAId",
      "definition" : "HSAId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.HSAId.root",
      "path" : "gethealthcarefacility.healthcareFacility.HSAId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.HSAId.hSAIdExtension",
      "path" : "gethealthcarefacility.healthcareFacility.HSAId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.orgUnitName",
      "path" : "gethealthcarefacility.healthcareFacility.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "orgUnitName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.alternativeLocation",
      "path" : "gethealthcarefacility.healthcareFacility.alternativeLocation",
      "short" : "alternativeLocation",
      "definition" : "alternativeLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.information",
      "path" : "gethealthcarefacility.healthcareFacility.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.information.header",
      "path" : "gethealthcarefacility.healthcareFacility.information.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.information.description",
      "path" : "gethealthcarefacility.healthcareFacility.information.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.information.link",
      "path" : "gethealthcarefacility.healthcareFacility.information.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.conditionToConfirm",
      "path" : "gethealthcarefacility.healthcareFacility.conditionToConfirm",
      "short" : "conditionToConfirm",
      "definition" : "conditionToConfirm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.conditionToConfirm.header",
      "path" : "gethealthcarefacility.healthcareFacility.conditionToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.conditionToConfirm.description",
      "path" : "gethealthcarefacility.healthcareFacility.conditionToConfirm.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacility.healthcareFacility.conditionToConfirm.link",
      "path" : "gethealthcarefacility.healthcareFacility.conditionToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gethealthcarefacility.resultCode",
      "path" : "gethealthcarefacility.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ValueSet/scheduling-resultcode-vs"
      }
    },
    {
      "id" : "gethealthcarefacility.resultText",
      "path" : "gethealthcarefacility.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
