# GetAvailableDates — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableDates — Request**

## Logical Model: GetAvailableDates — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates-request | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetAvailableDatesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableDates (urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getavailabledates-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailabledates-request.csv), [Excel](StructureDefinition-getavailabledates-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailabledates-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates-request",
  "version" : "2.0",
  "name" : "GetAvailableDatesRequest",
  "title" : "GetAvailableDates — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableDates\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getavailabledates-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabledates-request",
      "path" : "getavailabledates-request",
      "short" : "GetAvailableDates — Request",
      "definition" : "Logisk modell för begäran i GetAvailableDates\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailabledates-request.logicalAddress",
      "path" : "getavailabledates-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor",
      "path" : "getavailabledates-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorId",
      "path" : "getavailabledates-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorId.root",
      "path" : "getavailabledates-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorId.iiExtension",
      "path" : "getavailabledates-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType",
      "path" : "getavailabledates-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType.snomedCtCode",
      "path" : "getavailabledates-request.actor.actorType.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType.codeSystem",
      "path" : "getavailabledates-request.actor.actorType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType.codeSystemName",
      "path" : "getavailabledates-request.actor.actorType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType.codeSystemVersion",
      "path" : "getavailabledates-request.actor.actorType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType.displayName",
      "path" : "getavailabledates-request.actor.actorType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.actor.actorType.originalText",
      "path" : "getavailabledates-request.actor.actorType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.originalAppointmentId",
      "path" : "getavailabledates-request.originalAppointmentId",
      "short" : "originalAppointmentId",
      "definition" : "originalAppointmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.personId",
      "path" : "getavailabledates-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates-request.personId.root",
      "path" : "getavailabledates-request.personId.root",
      "short" : "root",
      "definition" : "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.personId.personIdExtension",
      "path" : "getavailabledates-request.personId.personIdExtension",
      "short" : "personIdExtension",
      "definition" : "personIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.startDateInclusive",
      "path" : "getavailabledates-request.startDateInclusive",
      "short" : "startDateInclusive",
      "definition" : "startDateInclusive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.endDateInclusive",
      "path" : "getavailabledates-request.endDateInclusive",
      "short" : "endDateInclusive",
      "definition" : "endDateInclusive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.priority",
      "path" : "getavailabledates-request.priority",
      "short" : "priority",
      "definition" : "priority",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailabledates-request.practitionerId",
      "path" : "getavailabledates-request.practitionerId",
      "short" : "practitionerId",
      "definition" : "practitionerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates-request.practitionerId.root",
      "path" : "getavailabledates-request.practitionerId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.practitionerId.hSAIdExtension",
      "path" : "getavailabledates-request.practitionerId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.timeTypeCode",
      "path" : "getavailabledates-request.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "timeTypeCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.healthcareServiceCode",
      "path" : "getavailabledates-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "healthcareServiceCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode",
      "path" : "getavailabledates-request.careContactCode",
      "short" : "careContactCode",
      "definition" : "careContactCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode.cvCode",
      "path" : "getavailabledates-request.careContactCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode.codeSystem",
      "path" : "getavailabledates-request.careContactCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode.codeSystemName",
      "path" : "getavailabledates-request.careContactCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode.codeSystemVersion",
      "path" : "getavailabledates-request.careContactCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode.displayName",
      "path" : "getavailabledates-request.careContactCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates-request.careContactCode.originalText",
      "path" : "getavailabledates-request.careContactCode.originalText",
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
