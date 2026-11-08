// Elementen genereras ur GetBlocksResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetBlocks v2.0 (querying)
// Genererad: 2026-04-09

Logical: GetBlocks
Id: getblocks
Title: "GetBlocks"
Description: """
  Logisk modell för tjänstekontraktet GetBlocks
  (RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).
  Läser alla registrerade spärrar för en viss organisation (lokal nivå).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* BlockHeaderType 1..1 Base "BlockHeaderType" "BlockHeaderType"
* BlockHeaderType.Result 1..1 Base "ResultType" "Result"
* BlockHeaderType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* BlockHeaderType.Result.ResultCode from ResultCodeVS (required)
* BlockHeaderType.Result.ResultText 1..1 string "ResultText" "ResultText"
* BlockHeaderType.Blocks 0..* Base "BlockType" "Blocks"
* BlockHeaderType.Blocks.BlockId 1..1 string "BlockId" "BlockId"
* BlockHeaderType.Blocks.BlockType 1..1 code "BlockType" "BlockType Tillåtna värden: Inner, Outer."
* BlockHeaderType.Blocks.BlockType from BlockTypeVS (required)
* BlockHeaderType.Blocks.PatientId 1..1 string "PatientId" "PatientId"
* BlockHeaderType.Blocks.InformationStartDate 0..1 dateTime "InformationStartDate" "InformationStartDate"
* BlockHeaderType.Blocks.InformationEndDate 0..1 dateTime "InformationEndDate" "InformationEndDate"
* BlockHeaderType.Blocks.InformationCareUnitId 0..1 string "InformationCareUnitId" "InformationCareUnitId"
* BlockHeaderType.Blocks.InformationCareProviderId 1..1 string "InformationCareProviderId" "InformationCareProviderId"
* BlockHeaderType.Blocks.ExcludedInformationTypes 0..* Base "InformationTypeType" "ExcludedInformationTypes"
* BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeId 1..1 string "InfoTypeId" "InfoTypeId"
* BlockHeaderType.Blocks.ExcludedInformationTypes.InfoTypeDescription 1..1 string "InfoTypeDescription" "InfoTypeDescription"
* BlockHeaderType.Blocks.TemporaryRevokes 0..* Base "TemporaryRevokeType" "TemporaryRevokes"
* BlockHeaderType.Blocks.TemporaryRevokes.TemporaryRevokeId 1..1 string "TemporaryRevokeId" "TemporaryRevokeId"
* BlockHeaderType.Blocks.TemporaryRevokes.EndDate 1..1 dateTime "EndDate" "EndDate"
* BlockHeaderType.Blocks.TemporaryRevokes.RevokedForCareUnitId 1..1 string "RevokedForCareUnitId" "RevokedForCareUnitId"
* BlockHeaderType.Blocks.TemporaryRevokes.RevokedForEmployeeId 0..1 string "RevokedForEmployeeId" "RevokedForEmployeeId"
* BlockHeaderType.Blocks.TemporaryRevokes.OwnerId 0..1 string "OwnerId" "OwnerId"
* BlockHeaderType.Blocks.OwnerId 0..1 string "OwnerId" "OwnerId"
* BlockHeaderType.NextCreatedOnOrAfter 1..1 dateTime "NextCreatedOnOrAfter" "NextCreatedOnOrAfter"
* BlockHeaderType.LatestCancellation 1..1 dateTime "LatestCancellation" "LatestCancellation"
