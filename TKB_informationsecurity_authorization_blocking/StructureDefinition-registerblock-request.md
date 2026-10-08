# RegisterBlock — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterBlock — Request**

## Logical Model: RegisterBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerblock-request | *Version*:4.0 |
| Active as of 2026-10-08 | *Computable Name*:RegisterBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegisterBlock (urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-registerblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerblock-request.csv), [Excel](StructureDefinition-registerblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerblock-request",
  "version" : "4.0",
  "name" : "RegisterBlockRequest",
  "title" : "RegisterBlock — Request",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegisterBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerblock-request",
      "path" : "registerblock-request",
      "short" : "RegisterBlock — Request",
      "definition" : "Logisk modell för begäran i RegisterBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registerblock-request.logicalAddress",
      "path" : "registerblock-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges SE165565594230-1000.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.blockId",
      "path" : "registerblock-request.blockId",
      "short" : "blockId",
      "definition" : "blockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.blockType",
      "path" : "registerblock-request.blockType",
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
      "id" : "registerblock-request.patientId",
      "path" : "registerblock-request.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerblock-request.patientId.root",
      "path" : "registerblock-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.patientId.iiExtension",
      "path" : "registerblock-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.informationStartDate",
      "path" : "registerblock-request.informationStartDate",
      "short" : "informationStartDate",
      "definition" : "informationStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerblock-request.informationEndDate",
      "path" : "registerblock-request.informationEndDate",
      "short" : "informationEndDate",
      "definition" : "informationEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerblock-request.informationCareUnitId",
      "path" : "registerblock-request.informationCareUnitId",
      "short" : "informationCareUnitId",
      "definition" : "informationCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.informationCareProviderId",
      "path" : "registerblock-request.informationCareProviderId",
      "short" : "informationCareProviderId",
      "definition" : "informationCareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.excludedInformationTypes",
      "path" : "registerblock-request.excludedInformationTypes",
      "short" : "excludedInformationTypes",
      "definition" : "excludedInformationTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration",
      "path" : "registerblock-request.temporaryRevokeRegistration",
      "short" : "temporaryRevokeRegistration",
      "definition" : "Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.temporaryRevokeId",
      "path" : "registerblock-request.temporaryRevokeRegistration.temporaryRevokeId",
      "short" : "temporaryRevokeId",
      "definition" : "temporaryRevokeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.blockId",
      "path" : "registerblock-request.temporaryRevokeRegistration.blockId",
      "short" : "blockId",
      "definition" : "blockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.endDate",
      "path" : "registerblock-request.temporaryRevokeRegistration.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.revokedForCareUnitId",
      "path" : "registerblock-request.temporaryRevokeRegistration.revokedForCareUnitId",
      "short" : "revokedForCareUnitId",
      "definition" : "revokedForCareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.revokedForEmployeeId",
      "path" : "registerblock-request.temporaryRevokeRegistration.revokedForEmployeeId",
      "short" : "revokedForEmployeeId",
      "definition" : "revokedForEmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
