# UpdateAppointment — Request - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateAppointment — Request**

## Logical Model: UpdateAppointment — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/updateappointment-request | *Version*:2.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:UpdateAppointmentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdateAppointment (urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-updateappointment-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updateappointment-request.csv), [Excel](StructureDefinition-updateappointment-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updateappointment-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/updateappointment-request",
  "version" : "2.0.0",
  "name" : "UpdateAppointmentRequest",
  "title" : "UpdateAppointment — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdateAppointment\n(urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/updateappointment-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updateappointment-request",
      "path" : "updateappointment-request",
      "short" : "UpdateAppointment — Request",
      "definition" : "Logisk modell för begäran i UpdateAppointment\n(urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "updateappointment-request.logicalAddress",
      "path" : "updateappointment-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor",
      "path" : "updateappointment-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorId",
      "path" : "updateappointment-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorId.root",
      "path" : "updateappointment-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorId.iiExtension",
      "path" : "updateappointment-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType",
      "path" : "updateappointment-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType.snomedCtCode",
      "path" : "updateappointment-request.actor.actorType.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType.codeSystem",
      "path" : "updateappointment-request.actor.actorType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType.codeSystemName",
      "path" : "updateappointment-request.actor.actorType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType.codeSystemVersion",
      "path" : "updateappointment-request.actor.actorType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType.displayName",
      "path" : "updateappointment-request.actor.actorType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.actor.actorType.originalText",
      "path" : "updateappointment-request.actor.actorType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.originalAppointmentId",
      "path" : "updateappointment-request.originalAppointmentId",
      "short" : "originalAppointmentId",
      "definition" : "originalAppointmentId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.timeslotId",
      "path" : "updateappointment-request.timeslotId",
      "short" : "timeslotId",
      "definition" : "timeslotId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.personId",
      "path" : "updateappointment-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateappointment-request.personId.root",
      "path" : "updateappointment-request.personId.root",
      "short" : "root",
      "definition" : "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.personId.personIdExtension",
      "path" : "updateappointment-request.personId.personIdExtension",
      "short" : "personIdExtension",
      "definition" : "personIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonText",
      "path" : "updateappointment-request.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode",
      "path" : "updateappointment-request.reasonCode",
      "short" : "reasonCode",
      "definition" : "reasonCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode.cvCode",
      "path" : "updateappointment-request.reasonCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode.codeSystem",
      "path" : "updateappointment-request.reasonCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode.codeSystemName",
      "path" : "updateappointment-request.reasonCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode.codeSystemVersion",
      "path" : "updateappointment-request.reasonCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode.displayName",
      "path" : "updateappointment-request.reasonCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateappointment-request.reasonCode.originalText",
      "path" : "updateappointment-request.reasonCode.originalText",
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
