# RevokeExtendedBlock — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeExtendedBlock — Request**

## Logical Model: RevokeExtendedBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/revokeextendedblock-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:RevokeExtendedBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RevokeExtendedBlock. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-revokeextendedblock-request.json)

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
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/revokeextendedblock-request",
  "version" : "3.2.2",
  "name" : "RevokeExtendedBlockRequest",
  "title" : "RevokeExtendedBlock — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RevokeExtendedBlock.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/revokeextendedblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokeextendedblock-request",
      "path" : "revokeextendedblock-request",
      "short" : "RevokeExtendedBlock — Request",
      "definition" : "Logisk modell för requestparametrar i RevokeExtendedBlock."
    },
    {
      "id" : "revokeextendedblock-request.blockId",
      "path" : "revokeextendedblock-request.blockId",
      "short" : "Unik identifierare (UUID) för spärren som skall hävas permanent.",
      "definition" : "Unik identifierare (UUID) för spärren som skall hävas permanent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action",
      "path" : "revokeextendedblock-request.action",
      "short" : "Aktörsinformation för den som häver spärren",
      "definition" : "Aktörsinformation för den som häver spärren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.requestDate",
      "path" : "revokeextendedblock-request.action.requestDate",
      "short" : "Datum när hävning begärdes",
      "definition" : "Datum när hävning begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.requestedBy",
      "path" : "revokeextendedblock-request.action.requestedBy",
      "short" : "Aktören som begärde hävningen",
      "definition" : "Aktören som begärde hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.requestedBy.employeeId",
      "path" : "revokeextendedblock-request.action.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.requestedBy.assignmentId",
      "path" : "revokeextendedblock-request.action.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.requestedBy.assignmentName",
      "path" : "revokeextendedblock-request.action.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.registrationDate",
      "path" : "revokeextendedblock-request.action.registrationDate",
      "short" : "Datum när hävningen registrerades",
      "definition" : "Datum när hävningen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.registeredBy",
      "path" : "revokeextendedblock-request.action.registeredBy",
      "short" : "Aktören som registrerade hävningen",
      "definition" : "Aktören som registrerade hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.registeredBy.employeeId",
      "path" : "revokeextendedblock-request.action.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.registeredBy.assignmentId",
      "path" : "revokeextendedblock-request.action.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.registeredBy.assignmentName",
      "path" : "revokeextendedblock-request.action.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokeextendedblock-request.action.reasonText",
      "path" : "revokeextendedblock-request.action.reasonText",
      "short" : "Orsak till hävningen (fritext)",
      "definition" : "Orsak till hävningen (fritext)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
