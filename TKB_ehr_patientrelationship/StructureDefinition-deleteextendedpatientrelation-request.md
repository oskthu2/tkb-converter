# DeleteExtendedPatientRelation — Request - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteExtendedPatientRelation — Request**

## Logical Model: DeleteExtendedPatientRelation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/deleteextendedpatientrelation-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteExtendedPatientRelationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i DeleteExtendedPatientRelation. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-deleteextendedpatientrelation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteextendedpatientrelation-request.csv), [Excel](StructureDefinition-deleteextendedpatientrelation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteextendedpatientrelation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/deleteextendedpatientrelation-request",
  "version" : "1.0.1",
  "name" : "DeleteExtendedPatientRelationRequest",
  "title" : "DeleteExtendedPatientRelation — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i DeleteExtendedPatientRelation.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/deleteextendedpatientrelation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteextendedpatientrelation-request",
      "path" : "deleteextendedpatientrelation-request",
      "short" : "DeleteExtendedPatientRelation — Request",
      "definition" : "Logisk modell för requestparametrar i DeleteExtendedPatientRelation."
    },
    {
      "id" : "deleteextendedpatientrelation-request.patientRelationId",
      "path" : "deleteextendedpatientrelation-request.patientRelationId",
      "short" : "Identifierare (UUID) för den patientrelation som skall makuleras (max 36 tecken)",
      "definition" : "Identifierare (UUID) för den patientrelation som skall makuleras (max 36 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction",
      "path" : "deleteextendedpatientrelation-request.deletionAction",
      "short" : "Information om begäran och utförande av makuleringen",
      "definition" : "Information om begäran och utförande av makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.requestDate",
      "path" : "deleteextendedpatientrelation-request.deletionAction.requestDate",
      "short" : "Tidpunkt då makulering begärdes",
      "definition" : "Tidpunkt då makulering begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.requestedBy",
      "path" : "deleteextendedpatientrelation-request.deletionAction.requestedBy",
      "short" : "Den aktör som begärt makuleringen",
      "definition" : "Den aktör som begärt makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.requestedBy.employeeId",
      "path" : "deleteextendedpatientrelation-request.deletionAction.requestedBy.employeeId",
      "short" : "Medarbetare-id (HSA-id)",
      "definition" : "Medarbetare-id (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.requestedBy.assignmentId",
      "path" : "deleteextendedpatientrelation-request.deletionAction.requestedBy.assignmentId",
      "short" : "Optionellt uppdragid (HSA-id)",
      "definition" : "Optionellt uppdragid (HSA-id)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.requestedBy.assignmentName",
      "path" : "deleteextendedpatientrelation-request.deletionAction.requestedBy.assignmentName",
      "short" : "Optionellt uppdragsnamn (max 256 tecken)",
      "definition" : "Optionellt uppdragsnamn (max 256 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.registrationDate",
      "path" : "deleteextendedpatientrelation-request.deletionAction.registrationDate",
      "short" : "Tidpunkt då makuleringen registrerades",
      "definition" : "Tidpunkt då makuleringen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.registeredBy",
      "path" : "deleteextendedpatientrelation-request.deletionAction.registeredBy",
      "short" : "Den aktör som utförde makuleringen",
      "definition" : "Den aktör som utförde makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.registeredBy.employeeId",
      "path" : "deleteextendedpatientrelation-request.deletionAction.registeredBy.employeeId",
      "short" : "Medarbetare-id (HSA-id)",
      "definition" : "Medarbetare-id (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.registeredBy.assignmentId",
      "path" : "deleteextendedpatientrelation-request.deletionAction.registeredBy.assignmentId",
      "short" : "Optionellt uppdragid (HSA-id)",
      "definition" : "Optionellt uppdragid (HSA-id)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.registeredBy.assignmentName",
      "path" : "deleteextendedpatientrelation-request.deletionAction.registeredBy.assignmentName",
      "short" : "Optionellt uppdragsnamn (max 256 tecken)",
      "definition" : "Optionellt uppdragsnamn (max 256 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteextendedpatientrelation-request.deletionAction.reasonText",
      "path" : "deleteextendedpatientrelation-request.deletionAction.reasonText",
      "short" : "Optionell anledning till makuleringen (max 1024 tecken)",
      "definition" : "Optionell anledning till makuleringen (max 1024 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
