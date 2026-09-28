# GetListing — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListing — Request**

## Logical Model: GetListing — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlisting-request | *Version*:2.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetListingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetListing (urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlisting-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlisting-request.csv), [Excel](StructureDefinition-getlisting-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlisting-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlisting-request",
  "version" : "2.1.0",
  "name" : "GetListingRequest",
  "title" : "GetListing — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:25:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetListing\n(urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlisting-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlisting-request",
      "path" : "getlisting-request",
      "short" : "GetListing — Request",
      "definition" : "Logisk modell för begäran i GetListing\n(urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getlisting-request.logicalAddress",
      "path" : "getlisting-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting-request.actor",
      "path" : "getlisting-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting-request.actor.actorId",
      "path" : "getlisting-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting-request.actor.actorId.root",
      "path" : "getlisting-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting-request.actor.actorId.iIExtension",
      "path" : "getlisting-request.actor.actorId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting-request.actor.actorType",
      "path" : "getlisting-request.actor.actorType",
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
      "id" : "getlisting-request.personId",
      "path" : "getlisting-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting-request.personId.root",
      "path" : "getlisting-request.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting-request.personId.iIExtension",
      "path" : "getlisting-request.personId.iIExtension",
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
