# GetExtendedBlocksForPatient - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedBlocksForPatient**

## Logical Model: GetExtendedBlocksForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getextendedblocksforpatient | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetExtendedBlocksForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient (RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2). Läser spärrar för en viss patient med utökad information inklusive aktörsinformation, historik och makulerade spärrar. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getextendedblocksforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedblocksforpatient.csv), [Excel](StructureDefinition-getextendedblocksforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedblocksforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getextendedblocksforpatient",
  "version" : "2.0",
  "name" : "GetExtendedBlocksForPatient",
  "title" : "GetExtendedBlocksForPatient",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2).\nLäser spärrar för en viss patient med utökad information inklusive aktörsinformation,\nhistorik och makulerade spärrar. Representerar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getextendedblocksforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedblocksforpatient",
      "path" : "getextendedblocksforpatient",
      "short" : "GetExtendedBlocksForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2).\nLäser spärrar för en viss patient med utökad information inklusive aktörsinformation,\nhistorik och makulerade spärrar. Representerar responsens informationsstruktur."
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType",
      "short" : "GetExtendedBlocksResultType",
      "definition" : "GetExtendedBlocksResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Result",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Result.ResultCode",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Result.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Result.ResultText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks",
      "short" : "ExtendedBlockType",
      "definition" : "Blocks",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.BlockId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.BlockId",
      "short" : "BlockId",
      "definition" : "BlockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.BlockType",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.BlockType",
      "short" : "BlockType",
      "definition" : "BlockType Tillåtna värden: Inner, Outer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/blocktype-vs"
      }
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PatientId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationStartDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationStartDate",
      "short" : "InformationStartDate",
      "definition" : "InformationStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationEndDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationEndDate",
      "short" : "InformationEndDate",
      "definition" : "InformationEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationCareUnitId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationCareUnitId",
      "short" : "InformationCareUnitId",
      "definition" : "InformationCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationCareProviderId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.InformationCareProviderId",
      "short" : "InformationCareProviderId",
      "definition" : "InformationCareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.ExcludedInformationTypes",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.ExcludedInformationTypes",
      "short" : "InformationTypeType",
      "definition" : "ExcludedInformationTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "short" : "InfoTypeId",
      "definition" : "InfoTypeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "short" : "InfoTypeDescription",
      "definition" : "InfoTypeDescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo",
      "short" : "ActionType",
      "definition" : "RegistrationInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegistrationDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.ReasonText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.RegistrationInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo",
      "short" : "ActionType",
      "definition" : "PermanentRevokedInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegistrationDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.ReasonText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.PermanentRevokedInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo",
      "short" : "ActionType",
      "definition" : "DeletionInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegistrationDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.ReasonText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.DeletionInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes",
      "short" : "ExtendedTemporaryRevokeType",
      "definition" : "TemporaryRevokes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "short" : "TemporaryRevokeId",
      "definition" : "TemporaryRevokeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.EndDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "short" : "RevokedForCareUnitId",
      "definition" : "RevokedForCareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "short" : "RevokedForEmployeeId",
      "definition" : "RevokedForEmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevocationReason",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevocationReason",
      "short" : "RevocationReason",
      "definition" : "RevocationReason Tillåtna värden: PatientsConsent, Emergency.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/temporaryrevokereason-vs"
      }
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevocationReasonText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RevocationReasonText",
      "short" : "RevocationReasonText",
      "definition" : "RevocationReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo",
      "short" : "ActionType",
      "definition" : "RegistrationInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegistrationDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.ReasonText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.RegistrationInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo",
      "short" : "ActionType",
      "definition" : "CancellationInfo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestDate",
      "short" : "RequestDate",
      "definition" : "RequestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy",
      "short" : "ActorType",
      "definition" : "RequestedBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RequestedBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegistrationDate",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegistrationDate",
      "short" : "RegistrationDate",
      "definition" : "RegistrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy",
      "short" : "ActorType",
      "definition" : "RegisteredBy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy.EmployeeId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy.AssignmentId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy.AssignmentId",
      "short" : "AssignmentId",
      "definition" : "AssignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy.AssignmentName",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.RegisteredBy.AssignmentName",
      "short" : "AssignmentName",
      "definition" : "AssignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.ReasonText",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.CancellationInfo.ReasonText",
      "short" : "ReasonText",
      "definition" : "ReasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.OwnerId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.TemporaryRevokes.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.OwnerId",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.LocallyCreated",
      "path" : "getextendedblocksforpatient.GetExtendedBlocksResultType.Blocks.LocallyCreated",
      "short" : "LocallyCreated",
      "definition" : "LocallyCreated",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
