# GetAllBlocksForPatient - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllBlocksForPatient**

## Logical Model: GetAllBlocksForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocksforpatient | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAllBlocksForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAllBlocksForPatient (RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2). Läser alla nationellt kända/lagrade spärrar för en viss patient. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getallblocksforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallblocksforpatient.csv), [Excel](StructureDefinition-getallblocksforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallblocksforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocksforpatient",
  "version" : "2.0",
  "name" : "GetAllBlocksForPatient",
  "title" : "GetAllBlocksForPatient",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAllBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2).\nLäser alla nationellt kända/lagrade spärrar för en viss patient.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocksforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallblocksforpatient",
      "path" : "getallblocksforpatient",
      "short" : "GetAllBlocksForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetAllBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2).\nLäser alla nationellt kända/lagrade spärrar för en viss patient.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType",
      "path" : "getallblocksforpatient.BlockHeaderType",
      "short" : "BlockHeaderType",
      "definition" : "BlockHeaderType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Result",
      "path" : "getallblocksforpatient.BlockHeaderType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Result.ResultCode",
      "path" : "getallblocksforpatient.BlockHeaderType.Result.ResultCode",
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
      "id" : "getallblocksforpatient.BlockHeaderType.Result.ResultText",
      "path" : "getallblocksforpatient.BlockHeaderType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks",
      "short" : "BlockType",
      "definition" : "Blocks",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.BlockId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.BlockId",
      "short" : "BlockId",
      "definition" : "BlockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.BlockType",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.BlockType",
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
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.PatientId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationStartDate",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationStartDate",
      "short" : "InformationStartDate",
      "definition" : "InformationStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationEndDate",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationEndDate",
      "short" : "InformationEndDate",
      "definition" : "InformationEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationCareUnitId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationCareUnitId",
      "short" : "InformationCareUnitId",
      "definition" : "InformationCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationCareProviderId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.InformationCareProviderId",
      "short" : "InformationCareProviderId",
      "definition" : "InformationCareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.ExcludedInformationTypes",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.ExcludedInformationTypes",
      "short" : "InformationTypeType",
      "definition" : "ExcludedInformationTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "short" : "InfoTypeId",
      "definition" : "InfoTypeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "short" : "InfoTypeDescription",
      "definition" : "InfoTypeDescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes",
      "short" : "TemporaryRevokeType",
      "definition" : "TemporaryRevokes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "short" : "TemporaryRevokeId",
      "definition" : "TemporaryRevokeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.EndDate",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "short" : "RevokedForCareUnitId",
      "definition" : "RevokedForCareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "short" : "RevokedForEmployeeId",
      "definition" : "RevokedForEmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.OwnerId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.TemporaryRevokes.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.Blocks.OwnerId",
      "path" : "getallblocksforpatient.BlockHeaderType.Blocks.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.NextCreatedOnOrAfter",
      "path" : "getallblocksforpatient.BlockHeaderType.NextCreatedOnOrAfter",
      "short" : "NextCreatedOnOrAfter",
      "definition" : "NextCreatedOnOrAfter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocksforpatient.BlockHeaderType.LatestCancellation",
      "path" : "getallblocksforpatient.BlockHeaderType.LatestCancellation",
      "short" : "LatestCancellation",
      "definition" : "LatestCancellation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
