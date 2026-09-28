# GetAvailableHealthcareFacilities — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcareFacilities — Response**

## Logical Model: GetAvailableHealthcareFacilities — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities | *Version*:2.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetAvailableHealthcareFacilities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAvailableHealthcareFacilities (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarefacilities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarefacilities.csv), [Excel](StructureDefinition-getavailablehealthcarefacilities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarefacilities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities",
  "version" : "2.1.0",
  "name" : "GetAvailableHealthcareFacilities",
  "title" : "GetAvailableHealthcareFacilities — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:25:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarefacilities",
      "path" : "getavailablehealthcarefacilities",
      "short" : "GetAvailableHealthcareFacilities — Response",
      "definition" : "Logisk modell för svaret i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType)."
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities",
      "short" : "healthcareFacilities",
      "definition" : "Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.healthcareFacilityId",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.healthcareFacilityId",
      "short" : "healthcareFacilityId",
      "definition" : "healthcareFacilityId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.healthcareFacilityName",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.healthcareFacilityName",
      "short" : "healthcareFacilityName",
      "definition" : "Namn på vårdenheten. Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.hasQueue",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.hasQueue",
      "short" : "hasQueue",
      "definition" : "hasQueue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes",
      "short" : "supportedListingTypes",
      "definition" : "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.cVCode",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.codeSystem",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.codeSystemName",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.codeSystemVersion",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.displayName",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.originalText",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportsHealthcarePersonnel",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportsHealthcarePersonnel",
      "short" : "supportsHealthcarePersonnel",
      "definition" : "supportsHealthcarePersonnel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.queueLength",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.queueLength",
      "short" : "queueLength",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.estimatedWaitInQueue",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.estimatedWaitInQueue",
      "short" : "estimatedWaitInQueue",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.resultCode",
      "path" : "getavailablehealthcarefacilities.resultCode",
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
      "id" : "getavailablehealthcarefacilities.resultText",
      "path" : "getavailablehealthcarefacilities.resultText",
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
