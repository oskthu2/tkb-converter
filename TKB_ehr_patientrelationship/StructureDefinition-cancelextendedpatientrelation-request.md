# CancelExtendedPatientRelation — Request - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelExtendedPatientRelation — Request**

## Logical Model: CancelExtendedPatientRelation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/cancelextendedpatientrelation-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:CancelExtendedPatientRelationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CancelExtendedPatientRelation. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-cancelextendedpatientrelation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelextendedpatientrelation-request.csv), [Excel](StructureDefinition-cancelextendedpatientrelation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelextendedpatientrelation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/cancelextendedpatientrelation-request",
  "version" : "1.0.1",
  "name" : "CancelExtendedPatientRelationRequest",
  "title" : "CancelExtendedPatientRelation — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CancelExtendedPatientRelation.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/cancelextendedpatientrelation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelextendedpatientrelation-request",
      "path" : "cancelextendedpatientrelation-request",
      "short" : "CancelExtendedPatientRelation — Request",
      "definition" : "Logisk modell för requestparametrar i CancelExtendedPatientRelation."
    },
    {
      "id" : "cancelextendedpatientrelation-request.patientRelationId",
      "path" : "cancelextendedpatientrelation-request.patientRelationId",
      "short" : "Identifierare (UUID) för den patientrelation som skall återkallas (max 36 tecken)",
      "definition" : "Identifierare (UUID) för den patientrelation som skall återkallas (max 36 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction",
      "path" : "cancelextendedpatientrelation-request.cancellationAction",
      "short" : "Information om begäran och registrering av återkallelsen",
      "definition" : "Information om begäran och registrering av återkallelsen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.requestDate",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.requestDate",
      "short" : "Tidpunkt då återkallelse begärdes",
      "definition" : "Tidpunkt då återkallelse begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy",
      "short" : "Den aktör som begärt återkallelsen",
      "definition" : "Den aktör som begärt återkallelsen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy.employeeId",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy.employeeId",
      "short" : "Medarbetare-id (HSA-id)",
      "definition" : "Medarbetare-id (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy.assignmentId",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy.assignmentId",
      "short" : "Optionellt uppdragid (HSA-id)",
      "definition" : "Optionellt uppdragid (HSA-id)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy.assignmentName",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.requestedBy.assignmentName",
      "short" : "Optionellt uppdragsnamn (max 256 tecken)",
      "definition" : "Optionellt uppdragsnamn (max 256 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.registrationDate",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.registrationDate",
      "short" : "Tidpunkt då återkallelsen registrerades",
      "definition" : "Tidpunkt då återkallelsen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy",
      "short" : "Den aktör som registrerade återkallelsen",
      "definition" : "Den aktör som registrerade återkallelsen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy.employeeId",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy.employeeId",
      "short" : "Medarbetare-id (HSA-id)",
      "definition" : "Medarbetare-id (HSA-id)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy.assignmentId",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy.assignmentId",
      "short" : "Optionellt uppdragid (HSA-id)",
      "definition" : "Optionellt uppdragid (HSA-id)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy.assignmentName",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.registeredBy.assignmentName",
      "short" : "Optionellt uppdragsnamn (max 256 tecken)",
      "definition" : "Optionellt uppdragsnamn (max 256 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelextendedpatientrelation-request.cancellationAction.reasonText",
      "path" : "cancelextendedpatientrelation-request.cancellationAction.reasonText",
      "short" : "Optionell anledning till återkallelsen (max 1024 tecken)",
      "definition" : "Optionell anledning till återkallelsen (max 1024 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
