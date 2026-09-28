# RevokeExtendedBlock — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeExtendedBlock — Request**

## Logical Model: RevokeExtendedBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/revokeextendedblock-request | *Version*:4.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:RevokeExtendedBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RevokeExtendedBlock (urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-revokeextendedblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokeextendedblock-request.csv), [Excel](StructureDefinition-revokeextendedblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokeextendedblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/revokeextendedblock-request",
  "version" : "4.0.4",
  "name" : "RevokeExtendedBlockRequest",
  "title" : "RevokeExtendedBlock — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:02:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RevokeExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/revokeextendedblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokeextendedblock-request",
      "path" : "revokeextendedblock-request",
      "short" : "RevokeExtendedBlock — Request",
      "definition" : "Logisk modell för begäran i RevokeExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "revokeextendedblock-request.logicalAddress",
      "path" : "revokeextendedblock-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som spärren gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.blockId",
      "path" : "revokeextendedblock-request.blockId",
      "short" : "blockId",
      "definition" : "blockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction",
      "path" : "revokeextendedblock-request.revokeAction",
      "short" : "revokeAction",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.requestDate",
      "path" : "revokeextendedblock-request.revokeAction.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.requestedBy",
      "path" : "revokeextendedblock-request.revokeAction.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.requestedBy.employeeId",
      "path" : "revokeextendedblock-request.revokeAction.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.requestedBy.assignmentId",
      "path" : "revokeextendedblock-request.revokeAction.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.requestedBy.assignmentName",
      "path" : "revokeextendedblock-request.revokeAction.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.registrationDate",
      "path" : "revokeextendedblock-request.revokeAction.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.registeredBy",
      "path" : "revokeextendedblock-request.revokeAction.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.registeredBy.employeeId",
      "path" : "revokeextendedblock-request.revokeAction.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.registeredBy.assignmentId",
      "path" : "revokeextendedblock-request.revokeAction.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.registeredBy.assignmentName",
      "path" : "revokeextendedblock-request.revokeAction.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeAction.reasonText",
      "path" : "revokeextendedblock-request.revokeAction.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.revokeReasonText",
      "path" : "revokeextendedblock-request.revokeReasonText",
      "short" : "revokeReasonText",
      "definition" : "revokeReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.replicationTimeout",
      "path" : "revokeextendedblock-request.replicationTimeout",
      "short" : "replicationTimeout",
      "definition" : "replicationTimeout",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
