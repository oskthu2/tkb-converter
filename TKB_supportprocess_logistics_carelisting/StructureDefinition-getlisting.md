# GetListing — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListing — Response**

## Logical Model: GetListing — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlisting | *Version*:2.1 |
| Active as of 2026-10-08 | *Computable Name*:GetListing |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetListing (urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlisting.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlisting.csv), [Excel](StructureDefinition-getlisting.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlisting",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlisting",
  "version" : "2.1",
  "name" : "GetListing",
  "title" : "GetListing — Response",
  "status" : "active",
  "date" : "2026-10-08T18:55:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetListing\n(urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlisting",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlisting",
      "path" : "getlisting",
      "short" : "GetListing — Response",
      "definition" : "Logisk modell för svaret i GetListing\n(urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingResponseType)."
    },
    {
      "id" : "getlisting.listings",
      "path" : "getlisting.listings",
      "short" : "listings",
      "definition" : "listings",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.listings.validFromDate",
      "path" : "getlisting.listings.validFromDate",
      "short" : "validFromDate",
      "definition" : "validFromDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlisting.listings.validToDate",
      "path" : "getlisting.listings.validToDate",
      "short" : "validToDate",
      "definition" : "validToDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlisting.listings.listingType",
      "path" : "getlisting.listings.listingType",
      "short" : "listingType",
      "definition" : "listingType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.listings.listingType.cVCode",
      "path" : "getlisting.listings.listingType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.listingType.codeSystem",
      "path" : "getlisting.listings.listingType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.listingType.codeSystemName",
      "path" : "getlisting.listings.listingType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.listingType.codeSystemVersion",
      "path" : "getlisting.listings.listingType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.listingType.displayName",
      "path" : "getlisting.listings.listingType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.listingType.originalText",
      "path" : "getlisting.listings.listingType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility",
      "path" : "getlisting.listings.healthcareFacility",
      "short" : "healthcareFacility",
      "definition" : "Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.healthcareFacilityId",
      "path" : "getlisting.listings.healthcareFacility.healthcareFacilityId",
      "short" : "healthcareFacilityId",
      "definition" : "healthcareFacilityId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.healthcareFacilityName",
      "path" : "getlisting.listings.healthcareFacility.healthcareFacilityName",
      "short" : "healthcareFacilityName",
      "definition" : "Namn på vårdenheten. Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.hasQueue",
      "path" : "getlisting.listings.healthcareFacility.hasQueue",
      "short" : "hasQueue",
      "definition" : "hasQueue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes",
      "short" : "supportedListingTypes",
      "definition" : "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes.cVCode",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes.codeSystem",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes.codeSystemName",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes.codeSystemVersion",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes.displayName",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportedListingTypes.originalText",
      "path" : "getlisting.listings.healthcareFacility.supportedListingTypes.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.supportsHealthcarePersonnel",
      "path" : "getlisting.listings.healthcareFacility.supportsHealthcarePersonnel",
      "short" : "supportsHealthcarePersonnel",
      "definition" : "supportsHealthcarePersonnel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.queueLength",
      "path" : "getlisting.listings.healthcareFacility.queueLength",
      "short" : "queueLength",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlisting.listings.healthcareFacility.estimatedWaitInQueue",
      "path" : "getlisting.listings.healthcareFacility.estimatedWaitInQueue",
      "short" : "estimatedWaitInQueue",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlisting.listings.healthcarePersonnel",
      "path" : "getlisting.listings.healthcarePersonnel",
      "short" : "healthcarePersonnel",
      "definition" : "healthcarePersonnel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.listings.healthcarePersonnel.healthcarePersonnelId",
      "path" : "getlisting.listings.healthcarePersonnel.healthcarePersonnelId",
      "short" : "healthcarePersonnelId",
      "definition" : "healthcarePersonnelId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcarePersonnel.healthcarePersonnelName",
      "path" : "getlisting.listings.healthcarePersonnel.healthcarePersonnelName",
      "short" : "healthcarePersonnelName",
      "definition" : "healthcarePersonnelName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.healthcarePersonnel.title",
      "path" : "getlisting.listings.healthcarePersonnel.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.listings.isInQueue",
      "path" : "getlisting.listings.isInQueue",
      "short" : "isInQueue",
      "definition" : "isInQueue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlisting.listings.queuePosition",
      "path" : "getlisting.listings.queuePosition",
      "short" : "queuePosition",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlisting.listings.estimatedWaitInQueue",
      "path" : "getlisting.listings.estimatedWaitInQueue",
      "short" : "estimatedWaitInQueue",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlisting.listings.remainingChanges",
      "path" : "getlisting.listings.remainingChanges",
      "short" : "remainingChanges",
      "definition" : " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getlisting.resultCode",
      "path" : "getlisting.resultCode",
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
      "id" : "getlisting.resultText",
      "path" : "getlisting.resultText",
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
