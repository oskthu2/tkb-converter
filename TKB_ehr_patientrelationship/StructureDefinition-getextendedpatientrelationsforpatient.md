# GetExtendedPatientRelationsForPatient - ehr: patientrelationship v1.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedPatientRelationsForPatient**

## Logical Model: GetExtendedPatientRelationsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getextendedpatientrelationsforpatient | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetExtendedPatientRelationsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetExtendedPatientRelationsForPatient (RIV-TA urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1). Representerar responsens informationsstruktur — patientrelationer med utökad information (registrerings-, återkallelse- och makuleringsinformation). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-getextendedpatientrelationsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedpatientrelationsforpatient.csv), [Excel](StructureDefinition-getextendedpatientrelationsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedpatientrelationsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getextendedpatientrelationsforpatient",
  "version" : "1.0",
  "name" : "GetExtendedPatientRelationsForPatient",
  "title" : "GetExtendedPatientRelationsForPatient",
  "status" : "draft",
  "date" : "2026-11-09T03:30:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetExtendedPatientRelationsForPatient\n(RIV-TA urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1).\nRepresenterar responsens informationsstruktur — patientrelationer med utökad information (registrerings-,\nåterkallelse- och makuleringsinformation).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getextendedpatientrelationsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedpatientrelationsforpatient",
      "path" : "getextendedpatientrelationsforpatient",
      "short" : "GetExtendedPatientRelationsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetExtendedPatientRelationsForPatient\n(RIV-TA urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1).\nRepresenterar responsens informationsstruktur — patientrelationer med utökad information (registrerings-,\nåterkallelse- och makuleringsinformation)."
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType",
      "short" : "GetExtendedPatientRelationResultType",
      "definition" : "GetExtendedPatientRelationResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.Result",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.Result.ResultCode",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.Result.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientrelationship/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.Result.ResultText",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations",
      "short" : "ExtendedPatientRelationType",
      "definition" : "ExtendedPatientRelations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation",
      "short" : "PatientRelationType",
      "definition" : "PatientRelation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.PatientRelationId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.PatientRelationId",
      "short" : "PatientRelationId",
      "definition" : "PatientRelationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.PatientId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.CareProviderId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.CareUnitId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.StartDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.EndDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.OwnerId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo",
      "short" : "ActionType",
      "definition" : "RegistrationInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.AssignmentId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.AssignmentName",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegistrationDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.ReasonText",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo",
      "short" : "ActionType",
      "definition" : "CancellationInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.AssignmentId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.AssignmentName",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegistrationDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.ReasonText",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo",
      "short" : "ActionType",
      "definition" : "DeletionInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.AssignmentId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.AssignmentName",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegistrationDate",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.ReasonText",
      "path" : "getextendedpatientrelationsforpatient.GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
