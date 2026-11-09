# GetPatientRelationsForPatient - ehr: patientrelationship v1.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientRelationsForPatient**

## Logical Model: GetPatientRelationsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforpatient | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetPatientRelationsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetPatientRelationsForPatient (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1). Representerar responsens informationsstruktur — lista med giltiga patientrelationer för en patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-getpatientrelationsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientrelationsforpatient.csv), [Excel](StructureDefinition-getpatientrelationsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientrelationsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforpatient",
  "version" : "1.0",
  "name" : "GetPatientRelationsForPatient",
  "title" : "GetPatientRelationsForPatient",
  "status" : "draft",
  "date" : "2026-11-09T03:30:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetPatientRelationsForPatient\n(RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1).\nRepresenterar responsens informationsstruktur — lista med giltiga patientrelationer för en patient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/getpatientrelationsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientrelationsforpatient",
      "path" : "getpatientrelationsforpatient",
      "short" : "GetPatientRelationsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetPatientRelationsForPatient\n(RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1).\nRepresenterar responsens informationsstruktur — lista med giltiga patientrelationer för en patient."
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType",
      "short" : "GetPatientRelationsResultType",
      "definition" : "GetPatientRelationsResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.Result",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.Result.ResultCode",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.Result.ResultCode",
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
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.Result.ResultText",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations",
      "short" : "PatientRelationType",
      "definition" : "PatientRelations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.PatientRelationId",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.PatientRelationId",
      "short" : "PatientRelationId",
      "definition" : "PatientRelationId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.PatientId",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.CareProviderId",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.CareProviderId",
      "short" : "CareProviderId",
      "definition" : "CareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.CareUnitId",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.CareUnitId",
      "short" : "CareUnitId",
      "definition" : "CareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.EmployeeId",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.EmployeeId",
      "short" : "EmployeeId",
      "definition" : "EmployeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.StartDate",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.StartDate",
      "short" : "StartDate",
      "definition" : "StartDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.EndDate",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.OwnerId",
      "path" : "getpatientrelationsforpatient.GetPatientRelationsResultType.PatientRelations.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
