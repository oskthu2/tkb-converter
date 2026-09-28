# GetAvailableHealthcarePersonnel — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcarePersonnel — Response**

## Logical Model: GetAvailableHealthcarePersonnel — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel | *Version*:2.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetAvailableHealthcarePersonnel |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAvailableHealthcarePersonnel (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarepersonnel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarepersonnel.csv), [Excel](StructureDefinition-getavailablehealthcarepersonnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarepersonnel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel",
  "version" : "2.1.0",
  "name" : "GetAvailableHealthcarePersonnel",
  "title" : "GetAvailableHealthcarePersonnel — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:25:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarepersonnel",
      "path" : "getavailablehealthcarepersonnel",
      "short" : "GetAvailableHealthcarePersonnel — Response",
      "definition" : "Logisk modell för svaret i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelResponseType)."
    },
    {
      "id" : "getavailablehealthcarepersonnel.healthcarePersonnel",
      "path" : "getavailablehealthcarepersonnel.healthcarePersonnel",
      "short" : "healthcarePersonnel",
      "definition" : "healthcarePersonnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel.healthcarePersonnel.healthcarePersonnelId",
      "path" : "getavailablehealthcarepersonnel.healthcarePersonnel.healthcarePersonnelId",
      "short" : "healthcarePersonnelId",
      "definition" : "healthcarePersonnelId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel.healthcarePersonnel.healthcarePersonnelName",
      "path" : "getavailablehealthcarepersonnel.healthcarePersonnel.healthcarePersonnelName",
      "short" : "healthcarePersonnelName",
      "definition" : "healthcarePersonnelName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel.healthcarePersonnel.title",
      "path" : "getavailablehealthcarepersonnel.healthcarePersonnel.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel.resultCode",
      "path" : "getavailablehealthcarepersonnel.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-resultcode-vs"
      }
    },
    {
      "id" : "getavailablehealthcarepersonnel.resultText",
      "path" : "getavailablehealthcarepersonnel.resultText",
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
