# GetHealthcareFacilities — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthcareFacilities — Response**

## Logical Model: GetHealthcareFacilities — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetHealthcareFacilities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHealthcareFacilities (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gethealthcarefacilities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcarefacilities.csv), [Excel](StructureDefinition-gethealthcarefacilities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcarefacilities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities",
  "version" : "2.0",
  "name" : "GetHealthcareFacilities",
  "title" : "GetHealthcareFacilities — Response",
  "status" : "draft",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcarefacilities",
      "path" : "gethealthcarefacilities",
      "short" : "GetHealthcareFacilities — Response",
      "definition" : "Logisk modell för svaret i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType)."
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility",
      "path" : "gethealthcarefacilities.healthcareFacility",
      "short" : "healthcareFacility",
      "definition" : "healthcareFacility",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.HSAId",
      "path" : "gethealthcarefacilities.healthcareFacility.HSAId",
      "short" : "HSAId",
      "definition" : "HSAId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.HSAId.root",
      "path" : "gethealthcarefacilities.healthcareFacility.HSAId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.HSAId.hSAIdExtension",
      "path" : "gethealthcarefacilities.healthcareFacility.HSAId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.orgUnitName",
      "path" : "gethealthcarefacilities.healthcareFacility.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "orgUnitName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.alternativeLocation",
      "path" : "gethealthcarefacilities.healthcareFacility.alternativeLocation",
      "short" : "alternativeLocation",
      "definition" : "alternativeLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.information",
      "path" : "gethealthcarefacilities.healthcareFacility.information",
      "short" : "information",
      "definition" : "information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.information.header",
      "path" : "gethealthcarefacilities.healthcareFacility.information.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.information.description",
      "path" : "gethealthcarefacilities.healthcareFacility.information.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.information.link",
      "path" : "gethealthcarefacilities.healthcareFacility.information.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm",
      "short" : "conditionToConfirm",
      "definition" : "conditionToConfirm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.header",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.header",
      "short" : "header",
      "definition" : "header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.description",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.link",
      "path" : "gethealthcarefacilities.healthcareFacility.conditionToConfirm.link",
      "short" : "link",
      "definition" : "link",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "gethealthcarefacilities.resultCode",
      "path" : "gethealthcarefacilities.resultCode",
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
      "id" : "gethealthcarefacilities.resultText",
      "path" : "gethealthcarefacilities.resultText",
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
