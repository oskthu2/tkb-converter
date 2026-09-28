# GetAppointments — Request - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAppointments — Request**

## Logical Model: GetAppointments — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments-request | *Version*:2.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetAppointmentsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAppointments (urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getappointments-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getappointments-request.csv), [Excel](StructureDefinition-getappointments-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getappointments-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments-request",
  "version" : "2.0.0",
  "name" : "GetAppointmentsRequest",
  "title" : "GetAppointments — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getappointments-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getappointments-request",
      "path" : "getappointments-request",
      "short" : "GetAppointments — Request",
      "definition" : "Logisk modell för begäran i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getappointments-request.logicalAddress",
      "path" : "getappointments-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Verksamhetens HSAID på enhetsnivå",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor",
      "path" : "getappointments-request.actor",
      "short" : "actor",
      "definition" : "actor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorId",
      "path" : "getappointments-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorId.root",
      "path" : "getappointments-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorId.iiExtension",
      "path" : "getappointments-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType",
      "path" : "getappointments-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType.snomedCtCode",
      "path" : "getappointments-request.actor.actorType.snomedCtCode",
      "short" : "snomedCtCode",
      "definition" : "snomedCtCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType.codeSystem",
      "path" : "getappointments-request.actor.actorType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Tillåtna värden: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType.codeSystemName",
      "path" : "getappointments-request.actor.actorType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType.codeSystemVersion",
      "path" : "getappointments-request.actor.actorType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType.displayName",
      "path" : "getappointments-request.actor.actorType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.actor.actorType.originalText",
      "path" : "getappointments-request.actor.actorType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.personId",
      "path" : "getappointments-request.personId",
      "short" : "personId",
      "definition" : "personId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getappointments-request.personId.root",
      "path" : "getappointments-request.personId.root",
      "short" : "root",
      "definition" : "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.personId.personIdExtension",
      "path" : "getappointments-request.personId.personIdExtension",
      "short" : "personIdExtension",
      "definition" : "personIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.fromDate",
      "path" : "getappointments-request.fromDate",
      "short" : "fromDate",
      "definition" : "fromDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.toDate",
      "path" : "getappointments-request.toDate",
      "short" : "toDate",
      "definition" : "toDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.timeTypeCode",
      "path" : "getappointments-request.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "timeTypeCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getappointments-request.healthcareServiceCode",
      "path" : "getappointments-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "healthcareServiceCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
