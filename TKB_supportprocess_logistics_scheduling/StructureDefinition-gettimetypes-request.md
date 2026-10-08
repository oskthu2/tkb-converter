# GetTimeTypes — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTimeTypes — Request**

## Logical Model: GetTimeTypes — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes-request | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetTimeTypesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetTimeTypes (urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gettimetypes-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gettimetypes-request.csv), [Excel](StructureDefinition-gettimetypes-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gettimetypes-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes-request",
  "version" : "2.0",
  "name" : "GetTimeTypesRequest",
  "title" : "GetTimeTypes — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gettimetypes-request",
      "path" : "gettimetypes-request",
      "short" : "GetTimeTypes — Request",
      "definition" : "Logisk modell för begäran i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gettimetypes-request.logicalAddress",
      "path" : "gettimetypes-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor",
      "path" : "gettimetypes-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorId",
      "path" : "gettimetypes-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorId.root",
      "path" : "gettimetypes-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorId.iiExtension",
      "path" : "gettimetypes-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType",
      "path" : "gettimetypes-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType.snomedCtCode",
      "path" : "gettimetypes-request.actor.actorType.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType.codeSystem",
      "path" : "gettimetypes-request.actor.actorType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType.codeSystemName",
      "path" : "gettimetypes-request.actor.actorType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType.codeSystemVersion",
      "path" : "gettimetypes-request.actor.actorType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType.displayName",
      "path" : "gettimetypes-request.actor.actorType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorType.originalText",
      "path" : "gettimetypes-request.actor.actorType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.healthcareServiceCode",
      "path" : "gettimetypes-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "healthcareServiceCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.practitionerId",
      "path" : "gettimetypes-request.practitionerId",
      "short" : "practitionerId",
      "definition" : "practitionerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes-request.practitionerId.root",
      "path" : "gettimetypes-request.practitionerId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.practitionerId.hSAIdExtension",
      "path" : "gettimetypes-request.practitionerId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.personId",
      "path" : "gettimetypes-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gettimetypes-request.personId.root",
      "path" : "gettimetypes-request.personId.root",
      "short" : "root",
      "definition" : "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.personId.personIdExtension",
      "path" : "gettimetypes-request.personId.personIdExtension",
      "short" : "personIdExtension",
      "definition" : "personIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
