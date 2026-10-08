# GetAvailableHealthcareFacilities — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcareFacilities — Request**

## Logical Model: GetAvailableHealthcareFacilities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities-request | *Version*:2.1 |
| Active as of 2026-10-08 | *Computable Name*:GetAvailableHealthcareFacilitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableHealthcareFacilities (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarefacilities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarefacilities-request.csv), [Excel](StructureDefinition-getavailablehealthcarefacilities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarefacilities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities-request",
  "version" : "2.1",
  "name" : "GetAvailableHealthcareFacilitiesRequest",
  "title" : "GetAvailableHealthcareFacilities — Request",
  "status" : "active",
  "date" : "2026-10-08T18:55:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarefacilities-request",
      "path" : "getavailablehealthcarefacilities-request",
      "short" : "GetAvailableHealthcareFacilities — Request",
      "definition" : "Logisk modell för begäran i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailablehealthcarefacilities-request.logicalAddress",
      "path" : "getavailablehealthcarefacilities-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.healthcareFacilities",
      "path" : "getavailablehealthcarefacilities-request.healthcareFacilities",
      "short" : "healthcareFacilities",
      "definition" : "healthcareFacilities",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes",
      "path" : "getavailablehealthcarefacilities-request.listingTypes",
      "short" : "listingTypes",
      "definition" : "listingTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes.cVCode",
      "path" : "getavailablehealthcarefacilities-request.listingTypes.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes.codeSystem",
      "path" : "getavailablehealthcarefacilities-request.listingTypes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes.codeSystemName",
      "path" : "getavailablehealthcarefacilities-request.listingTypes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes.codeSystemVersion",
      "path" : "getavailablehealthcarefacilities-request.listingTypes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes.displayName",
      "path" : "getavailablehealthcarefacilities-request.listingTypes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes.originalText",
      "path" : "getavailablehealthcarefacilities-request.listingTypes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
