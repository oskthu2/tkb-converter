# GetAllBlocks - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllBlocks**

## Logical Model: GetAllBlocks 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocks | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAllBlocks |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAllBlocks (RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2). Läser alla nationellt kända/lagrade spärrar. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getallblocks.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallblocks.csv), [Excel](StructureDefinition-getallblocks.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallblocks",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocks",
  "version" : "2.0",
  "name" : "GetAllBlocks",
  "title" : "GetAllBlocks",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAllBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2).\nLäser alla nationellt kända/lagrade spärrar. Representerar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getallblocks",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallblocks",
      "path" : "getallblocks",
      "short" : "GetAllBlocks",
      "definition" : "Logisk modell för tjänstekontraktet GetAllBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2).\nLäser alla nationellt kända/lagrade spärrar. Representerar responsens informationsstruktur."
    },
    {
      "id" : "getallblocks.BlockHeaderType",
      "path" : "getallblocks.BlockHeaderType",
      "short" : "BlockHeaderType",
      "definition" : "BlockHeaderType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Result",
      "path" : "getallblocks.BlockHeaderType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Result.ResultCode",
      "path" : "getallblocks.BlockHeaderType.Result.ResultCode",
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
      "id" : "getallblocks.BlockHeaderType.Result.ResultText",
      "path" : "getallblocks.BlockHeaderType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks",
      "path" : "getallblocks.BlockHeaderType.Blocks",
      "short" : "BlockType",
      "definition" : "Blocks",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.BlockId",
      "path" : "getallblocks.BlockHeaderType.Blocks.BlockId",
      "short" : "BlockId",
      "definition" : "BlockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.BlockType",
      "path" : "getallblocks.BlockHeaderType.Blocks.BlockType",
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
      "id" : "getallblocks.BlockHeaderType.Blocks.PatientId",
      "path" : "getallblocks.BlockHeaderType.Blocks.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.InformationStartDate",
      "path" : "getallblocks.BlockHeaderType.Blocks.InformationStartDate",
      "short" : "InformationStartDate",
      "definition" : "InformationStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.InformationEndDate",
      "path" : "getallblocks.BlockHeaderType.Blocks.InformationEndDate",
      "short" : "InformationEndDate",
      "definition" : "InformationEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.InformationCareUnitId",
      "path" : "getallblocks.BlockHeaderType.Blocks.InformationCareUnitId",
      "short" : "InformationCareUnitId",
      "definition" : "InformationCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.InformationCareProviderId",
      "path" : "getallblocks.BlockHeaderType.Blocks.InformationCareProviderId",
      "short" : "InformationCareProviderId",
      "definition" : "InformationCareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.ExcludedInformationTypes",
      "path" : "getallblocks.BlockHeaderType.Blocks.ExcludedInformationTypes",
      "short" : "InformationTypeType",
      "definition" : "ExcludedInformationTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "path" : "getallblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "short" : "InfoTypeId",
      "definition" : "InfoTypeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "path" : "getallblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "short" : "InfoTypeDescription",
      "definition" : "InfoTypeDescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes",
      "path" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes",
      "short" : "TemporaryRevokeType",
      "definition" : "TemporaryRevokes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "path" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "short" : "TemporaryRevokeId",
      "definition" : "TemporaryRevokeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.EndDate",
      "path" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "path" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "short" : "RevokedForCareUnitId",
      "definition" : "RevokedForCareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "path" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "short" : "RevokedForEmployeeId",
      "definition" : "RevokedForEmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.OwnerId",
      "path" : "getallblocks.BlockHeaderType.Blocks.TemporaryRevokes.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.Blocks.OwnerId",
      "path" : "getallblocks.BlockHeaderType.Blocks.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.NextCreatedOnOrAfter",
      "path" : "getallblocks.BlockHeaderType.NextCreatedOnOrAfter",
      "short" : "NextCreatedOnOrAfter",
      "definition" : "NextCreatedOnOrAfter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallblocks.BlockHeaderType.LatestCancellation",
      "path" : "getallblocks.BlockHeaderType.LatestCancellation",
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
