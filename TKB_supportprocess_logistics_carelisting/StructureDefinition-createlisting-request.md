# CreateListing — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateListing — Request**

## Logical Model: CreateListing — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:CreateListingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CreateListing (urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-createlisting-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createlisting-request.csv), [Excel](StructureDefinition-createlisting-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createlisting-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting-request",
  "version" : "2.0",
  "name" : "CreateListingRequest",
  "title" : "CreateListing — Request",
  "status" : "active",
  "date" : "2026-10-08T18:55:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CreateListing\n(urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createlisting-request",
      "path" : "createlisting-request",
      "short" : "CreateListing — Request",
      "definition" : "Logisk modell för begäran i CreateListing\n(urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "createlisting-request.logicalAddress",
      "path" : "createlisting-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The region code (länskod)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.actor",
      "path" : "createlisting-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorId",
      "path" : "createlisting-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorId.root",
      "path" : "createlisting-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorId.iIExtension",
      "path" : "createlisting-request.actor.actorId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorType",
      "path" : "createlisting-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-actortype-vs"
      }
    },
    {
      "id" : "createlisting-request.personId",
      "path" : "createlisting-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.personId.root",
      "path" : "createlisting-request.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.personId.iIExtension",
      "path" : "createlisting-request.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.healthcareFacilityHSAId",
      "path" : "createlisting-request.healthcareFacilityHSAId",
      "short" : "healthcareFacilityHSAId",
      "definition" : "healthcareFacilityHSAId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType",
      "path" : "createlisting-request.listingType",
      "short" : "listingType",
      "definition" : "listingType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.listingType.cVCode",
      "path" : "createlisting-request.listingType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.codeSystem",
      "path" : "createlisting-request.listingType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.codeSystemName",
      "path" : "createlisting-request.listingType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.codeSystemVersion",
      "path" : "createlisting-request.listingType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.displayName",
      "path" : "createlisting-request.listingType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.originalText",
      "path" : "createlisting-request.listingType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.healthcarePersonnel",
      "path" : "createlisting-request.healthcarePersonnel",
      "short" : "healthcarePersonnel",
      "definition" : "healthcarePersonnel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.addToQueue",
      "path" : "createlisting-request.addToQueue",
      "short" : "addToQueue",
      "definition" : "addToQueue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "createlisting-request.homeCounty",
      "path" : "createlisting-request.homeCounty",
      "short" : "homeCounty",
      "definition" : "homeCounty",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.homeCounty.root",
      "path" : "createlisting-request.homeCounty.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.homeCounty.iIExtension",
      "path" : "createlisting-request.homeCounty.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.newListingCounty",
      "path" : "createlisting-request.newListingCounty",
      "short" : "newListingCounty",
      "definition" : "newListingCounty",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.newListingCounty.root",
      "path" : "createlisting-request.newListingCounty.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.newListingCounty.iIExtension",
      "path" : "createlisting-request.newListingCounty.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
