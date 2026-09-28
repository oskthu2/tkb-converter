# GetAvailableHealthcarePersonnel — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcarePersonnel — Request**

## Logical Model: GetAvailableHealthcarePersonnel — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request | *Version*:2.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetAvailableHealthcarePersonnelRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableHealthcarePersonnel (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarepersonnel-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarepersonnel-request.csv), [Excel](StructureDefinition-getavailablehealthcarepersonnel-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarepersonnel-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request",
  "version" : "2.1.0",
  "name" : "GetAvailableHealthcarePersonnelRequest",
  "title" : "GetAvailableHealthcarePersonnel — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:25:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarepersonnel-request",
      "path" : "getavailablehealthcarepersonnel-request",
      "short" : "GetAvailableHealthcarePersonnel — Request",
      "definition" : "Logisk modell för begäran i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.logicalAddress",
      "path" : "getavailablehealthcarepersonnel-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.personId",
      "path" : "getavailablehealthcarepersonnel-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.personId.root",
      "path" : "getavailablehealthcarepersonnel-request.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.personId.iIExtension",
      "path" : "getavailablehealthcarepersonnel-request.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.healthcareFacilityHSAId",
      "path" : "getavailablehealthcarepersonnel-request.healthcareFacilityHSAId",
      "short" : "healthcareFacilityHSAId",
      "definition" : "healthcareFacilityHSAId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes",
      "short" : "listingTypes",
      "definition" : "listingTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.cVCode",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystem",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemName",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemVersion",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.displayName",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes.originalText",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes.originalText",
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
