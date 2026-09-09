# DeleteExtendedBlock — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteExtendedBlock — Request**

## Logical Model: DeleteExtendedBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/deleteextendedblock-request | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteExtendedBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i DeleteExtendedBlock. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-deleteextendedblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteextendedblock-request.csv), [Excel](StructureDefinition-deleteextendedblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteextendedblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/deleteextendedblock-request",
  "version" : "3.2.2",
  "name" : "DeleteExtendedBlockRequest",
  "title" : "DeleteExtendedBlock — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i DeleteExtendedBlock.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/deleteextendedblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteextendedblock-request",
      "path" : "deleteextendedblock-request",
      "short" : "DeleteExtendedBlock — Request",
      "definition" : "Logisk modell för requestparametrar i DeleteExtendedBlock."
    },
    {
      "id" : "deleteextendedblock-request.blockId",
      "path" : "deleteextendedblock-request.blockId",
      "short" : "Unik identifierare (UUID) för spärren som skall makuleras.",
      "definition" : "Unik identifierare (UUID) för spärren som skall makuleras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action",
      "path" : "deleteextendedblock-request.action",
      "short" : "Aktörsinformation för den som makulerar spärren",
      "definition" : "Aktörsinformation för den som makulerar spärren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.requestDate",
      "path" : "deleteextendedblock-request.action.requestDate",
      "short" : "Datum när makulering begärdes",
      "definition" : "Datum när makulering begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.requestedBy",
      "path" : "deleteextendedblock-request.action.requestedBy",
      "short" : "Aktören som begärde makuleringen",
      "definition" : "Aktören som begärde makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.requestedBy.employeeId",
      "path" : "deleteextendedblock-request.action.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.requestedBy.assignmentId",
      "path" : "deleteextendedblock-request.action.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.requestedBy.assignmentName",
      "path" : "deleteextendedblock-request.action.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.registrationDate",
      "path" : "deleteextendedblock-request.action.registrationDate",
      "short" : "Datum när makuleringen registrerades",
      "definition" : "Datum när makuleringen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.registeredBy",
      "path" : "deleteextendedblock-request.action.registeredBy",
      "short" : "Aktören som registrerade makuleringen",
      "definition" : "Aktören som registrerade makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.registeredBy.employeeId",
      "path" : "deleteextendedblock-request.action.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.registeredBy.assignmentId",
      "path" : "deleteextendedblock-request.action.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.registeredBy.assignmentName",
      "path" : "deleteextendedblock-request.action.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedblock-request.action.reasonText",
      "path" : "deleteextendedblock-request.action.reasonText",
      "short" : "Orsak till makuleringen (fritext)",
      "definition" : "Orsak till makuleringen (fritext)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
