# RegisterExtendedBlock — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterExtendedBlock — Request**

## Logical Model: RegisterExtendedBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerextendedblock-request | *Version*:4.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:RegisterExtendedBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegisterExtendedBlock (urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-registerextendedblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerextendedblock-request.csv), [Excel](StructureDefinition-registerextendedblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerextendedblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerextendedblock-request",
  "version" : "4.0.4",
  "name" : "RegisterExtendedBlockRequest",
  "title" : "RegisterExtendedBlock — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:02:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegisterExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerextendedblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerextendedblock-request",
      "path" : "registerextendedblock-request",
      "short" : "RegisterExtendedBlock — Request",
      "definition" : "Logisk modell för begäran i RegisterExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registerextendedblock-request.logicalAddress",
      "path" : "registerextendedblock-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som spärren gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.blockId",
      "path" : "registerextendedblock-request.blockId",
      "short" : "blockId",
      "definition" : "blockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.blockType",
      "path" : "registerextendedblock-request.blockType",
      "short" : "blockType",
      "definition" : "blockType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ValueSet/authorization-blocking-blocktype-vs"
      }
    },
    {
      "id" : "registerextendedblock-request.patientId",
      "path" : "registerextendedblock-request.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerextendedblock-request.patientId.root",
      "path" : "registerextendedblock-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.patientId.iiExtension",
      "path" : "registerextendedblock-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationStartDate",
      "path" : "registerextendedblock-request.informationStartDate",
      "short" : "informationStartDate",
      "definition" : "informationStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationEndDate",
      "path" : "registerextendedblock-request.informationEndDate",
      "short" : "informationEndDate",
      "definition" : "informationEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationCareUnitId",
      "path" : "registerextendedblock-request.informationCareUnitId",
      "short" : "informationCareUnitId",
      "definition" : "informationCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationCareProviderId",
      "path" : "registerextendedblock-request.informationCareProviderId",
      "short" : "informationCareProviderId",
      "definition" : "informationCareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.excludedInformationTypes",
      "path" : "registerextendedblock-request.excludedInformationTypes",
      "short" : "excludedInformationTypes",
      "definition" : "excludedInformationTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction",
      "path" : "registerextendedblock-request.registerAction",
      "short" : "registerAction",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestDate",
      "path" : "registerextendedblock-request.registerAction.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy",
      "path" : "registerextendedblock-request.registerAction.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy.employeeId",
      "path" : "registerextendedblock-request.registerAction.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy.assignmentId",
      "path" : "registerextendedblock-request.registerAction.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy.assignmentName",
      "path" : "registerextendedblock-request.registerAction.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registrationDate",
      "path" : "registerextendedblock-request.registerAction.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy",
      "path" : "registerextendedblock-request.registerAction.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy.employeeId",
      "path" : "registerextendedblock-request.registerAction.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy.assignmentId",
      "path" : "registerextendedblock-request.registerAction.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy.assignmentName",
      "path" : "registerextendedblock-request.registerAction.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.reasonText",
      "path" : "registerextendedblock-request.registerAction.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.replicationTimeout",
      "path" : "registerextendedblock-request.replicationTimeout",
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
