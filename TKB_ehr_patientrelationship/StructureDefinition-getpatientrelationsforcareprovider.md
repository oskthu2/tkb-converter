# GetPatientRelationsForCareProvider - ehr: patientrelationship v1.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientRelationsForCareProvider**

## Logical Model: GetPatientRelationsForCareProvider 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforcareprovider | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetPatientRelationsForCareProvider |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetPatientRelationsForCareProvider (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1). Representerar responsens informationsstruktur — alla giltiga patientrelationer för en vårdgivare, med stöd för paginering via HasMore/MoreOnOrAfter. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-getpatientrelationsforcareprovider.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientrelationsforcareprovider.csv), [Excel](StructureDefinition-getpatientrelationsforcareprovider.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientrelationsforcareprovider",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforcareprovider",
  "version" : "1.0",
  "name" : "GetPatientRelationsForCareProvider",
  "title" : "GetPatientRelationsForCareProvider",
  "status" : "draft",
  "date" : "2026-11-09T03:30:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetPatientRelationsForCareProvider\n(RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur — alla giltiga patientrelationer för en vårdgivare,\nmed stöd för paginering via HasMore/MoreOnOrAfter.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforcareprovider",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientrelationsforcareprovider",
      "path" : "getpatientrelationsforcareprovider",
      "short" : "GetPatientRelationsForCareProvider",
      "definition" : "Logisk modell för tjänstekontraktet GetPatientRelationsForCareProvider\n(RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur — alla giltiga patientrelationer för en vårdgivare,\nmed stöd för paginering via HasMore/MoreOnOrAfter."
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType",
      "short" : "GetAllPatientRelationsResultType",
      "definition" : "GetAllPatientRelationsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.Result",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.Result.ResultCode",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.Result.ResultCode",
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
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.Result.ResultText",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.MoreOnOrAfter",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.MoreOnOrAfter",
      "short" : "MoreOnOrAfter",
      "definition" : "MoreOnOrAfter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.HasMore",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.HasMore",
      "short" : "HasMore",
      "definition" : "HasMore",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations",
      "short" : "PatientRelationType",
      "definition" : "PatientRelations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.PatientRelationId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.PatientRelationId",
      "short" : "PatientRelationId",
      "definition" : "PatientRelationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.PatientId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.CareProviderId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.CareUnitId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.EmployeeId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.StartDate",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.EndDate",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.OwnerId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.PatientRelations.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.CancelledPatientRelations",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.CancelledPatientRelations",
      "short" : "CancelledPatientRelationType",
      "definition" : "CancelledPatientRelations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.CancelledPatientRelations.PatientRelationId",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.CancelledPatientRelations.PatientRelationId",
      "short" : "PatientRelationId",
      "definition" : "PatientRelationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.CancelledPatientRelations.CancellationDate",
      "path" : "getpatientrelationsforcareprovider.GetAllPatientRelationsResultType.CancelledPatientRelations.CancellationDate",
      "short" : "CancellationDate",
      "definition" : "CancellationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
