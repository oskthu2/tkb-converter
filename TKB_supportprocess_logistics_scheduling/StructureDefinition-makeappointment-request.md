# MakeAppointment — Request - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MakeAppointment — Request**

## Logical Model: MakeAppointment — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/makeappointment-request | *Version*:2.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:MakeAppointmentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i MakeAppointment (urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-makeappointment-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-makeappointment-request.csv), [Excel](StructureDefinition-makeappointment-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "makeappointment-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/makeappointment-request",
  "version" : "2.0.0",
  "name" : "MakeAppointmentRequest",
  "title" : "MakeAppointment — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i MakeAppointment\n(urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/makeappointment-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "makeappointment-request",
      "path" : "makeappointment-request",
      "short" : "MakeAppointment — Request",
      "definition" : "Logisk modell för begäran i MakeAppointment\n(urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "makeappointment-request.logicalAddress",
      "path" : "makeappointment-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor",
      "path" : "makeappointment-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorId",
      "path" : "makeappointment-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorId.root",
      "path" : "makeappointment-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorId.iiExtension",
      "path" : "makeappointment-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType",
      "path" : "makeappointment-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType.snomedCtCode",
      "path" : "makeappointment-request.actor.actorType.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType.codeSystem",
      "path" : "makeappointment-request.actor.actorType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType.codeSystemName",
      "path" : "makeappointment-request.actor.actorType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType.codeSystemVersion",
      "path" : "makeappointment-request.actor.actorType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType.displayName",
      "path" : "makeappointment-request.actor.actorType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.actor.actorType.originalText",
      "path" : "makeappointment-request.actor.actorType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.personId",
      "path" : "makeappointment-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "makeappointment-request.personId.root",
      "path" : "makeappointment-request.personId.root",
      "short" : "root",
      "definition" : "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.personId.personIdExtension",
      "path" : "makeappointment-request.personId.personIdExtension",
      "short" : "personIdExtension",
      "definition" : "personIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.timeslotId",
      "path" : "makeappointment-request.timeslotId",
      "short" : "timeslotId",
      "definition" : "timeslotId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonText",
      "path" : "makeappointment-request.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode",
      "path" : "makeappointment-request.reasonCode",
      "short" : "reasonCode",
      "definition" : "reasonCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode.cvCode",
      "path" : "makeappointment-request.reasonCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode.codeSystem",
      "path" : "makeappointment-request.reasonCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode.codeSystemName",
      "path" : "makeappointment-request.reasonCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode.codeSystemVersion",
      "path" : "makeappointment-request.reasonCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode.displayName",
      "path" : "makeappointment-request.reasonCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "makeappointment-request.reasonCode.originalText",
      "path" : "makeappointment-request.reasonCode.originalText",
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
