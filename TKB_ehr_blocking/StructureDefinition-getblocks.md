# GetBlocks - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBlocks**

## Logical Model: GetBlocks 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocks | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetBlocks |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetBlocks (RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2). Läser alla registrerade spärrar för en viss organisation (lokal nivå). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getblocks.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getblocks.csv), [Excel](StructureDefinition-getblocks.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getblocks",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocks",
  "version" : "2.0",
  "name" : "GetBlocks",
  "title" : "GetBlocks",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).\nLäser alla registrerade spärrar för en viss organisation (lokal nivå).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getblocks",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getblocks",
      "path" : "getblocks",
      "short" : "GetBlocks",
      "definition" : "Logisk modell för tjänstekontraktet GetBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).\nLäser alla registrerade spärrar för en viss organisation (lokal nivå).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "getblocks.BlockHeaderType",
      "path" : "getblocks.BlockHeaderType",
      "short" : "BlockHeaderType",
      "definition" : "BlockHeaderType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Result",
      "path" : "getblocks.BlockHeaderType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Result.ResultCode",
      "path" : "getblocks.BlockHeaderType.Result.ResultCode",
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
      "id" : "getblocks.BlockHeaderType.Result.ResultText",
      "path" : "getblocks.BlockHeaderType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks",
      "path" : "getblocks.BlockHeaderType.Blocks",
      "short" : "BlockType",
      "definition" : "Blocks",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.BlockId",
      "path" : "getblocks.BlockHeaderType.Blocks.BlockId",
      "short" : "BlockId",
      "definition" : "BlockId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.BlockType",
      "path" : "getblocks.BlockHeaderType.Blocks.BlockType",
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
      "id" : "getblocks.BlockHeaderType.Blocks.PatientId",
      "path" : "getblocks.BlockHeaderType.Blocks.PatientId",
      "short" : "PatientId",
      "definition" : "PatientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.InformationStartDate",
      "path" : "getblocks.BlockHeaderType.Blocks.InformationStartDate",
      "short" : "InformationStartDate",
      "definition" : "InformationStartDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.InformationEndDate",
      "path" : "getblocks.BlockHeaderType.Blocks.InformationEndDate",
      "short" : "InformationEndDate",
      "definition" : "InformationEndDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.InformationCareUnitId",
      "path" : "getblocks.BlockHeaderType.Blocks.InformationCareUnitId",
      "short" : "InformationCareUnitId",
      "definition" : "InformationCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.InformationCareProviderId",
      "path" : "getblocks.BlockHeaderType.Blocks.InformationCareProviderId",
      "short" : "InformationCareProviderId",
      "definition" : "InformationCareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.ExcludedInformationTypes",
      "path" : "getblocks.BlockHeaderType.Blocks.ExcludedInformationTypes",
      "short" : "InformationTypeType",
      "definition" : "ExcludedInformationTypes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "path" : "getblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId",
      "short" : "InfoTypeId",
      "definition" : "InfoTypeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "path" : "getblocks.BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription",
      "short" : "InfoTypeDescription",
      "definition" : "InfoTypeDescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes",
      "path" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes",
      "short" : "TemporaryRevokeType",
      "definition" : "TemporaryRevokes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "path" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId",
      "short" : "TemporaryRevokeId",
      "definition" : "TemporaryRevokeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.EndDate",
      "path" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.EndDate",
      "short" : "EndDate",
      "definition" : "EndDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "path" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId",
      "short" : "RevokedForCareUnitId",
      "definition" : "RevokedForCareUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "path" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId",
      "short" : "RevokedForEmployeeId",
      "definition" : "RevokedForEmployeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.OwnerId",
      "path" : "getblocks.BlockHeaderType.Blocks.TemporaryRevokes.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.Blocks.OwnerId",
      "path" : "getblocks.BlockHeaderType.Blocks.OwnerId",
      "short" : "OwnerId",
      "definition" : "OwnerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.NextCreatedOnOrAfter",
      "path" : "getblocks.BlockHeaderType.NextCreatedOnOrAfter",
      "short" : "NextCreatedOnOrAfter",
      "definition" : "NextCreatedOnOrAfter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getblocks.BlockHeaderType.LatestCancellation",
      "path" : "getblocks.BlockHeaderType.LatestCancellation",
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
