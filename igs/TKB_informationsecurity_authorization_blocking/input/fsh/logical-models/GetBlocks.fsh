// Elementen genereras ur GetBlocksResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetBlocks v4.0
// Genererad: 2026-09-26

Logical: GetBlocks
Id: getblocks
Title: "GetBlocks — Response"
Description: """
  Logisk modell för svaret i GetBlocks
  (urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4, GetBlocksResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* blockHeader 1..1 Base "BlockHeaderType" "blockHeader"
* blockHeader.result 1..1 Base "ResultType" "result"
* blockHeader.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* blockHeader.result.resultCode from ResultCodeVS (required)
* blockHeader.result.resultText 0..1 string "resultText" "resultText"
* blockHeader.blocks 0..* Base "BlockType" "blocks"
* blockHeader.blocks.blockId 1..1 string "blockId" "blockId"
* blockHeader.blocks.blockType 1..1 code "blockType" "blockType Tillåtna värden: Inner, Outer."
* blockHeader.blocks.blockType from BlockTypeVS (required)
* blockHeader.blocks.informationStartDate 0..1 dateTime "informationStartDate" "informationStartDate"
* blockHeader.blocks.informationEndDate 0..1 dateTime "informationEndDate" "informationEndDate"
* blockHeader.blocks.informationCareUnitId 0..1 string "informationCareUnitId" "informationCareUnitId"
* blockHeader.blocks.informationCareProviderId 1..1 string "informationCareProviderId" "informationCareProviderId"
* blockHeader.blocks.patientId 1..1 IIType "patientId" "patientId"
* blockHeader.blocks.excludedInformationTypes 0..* Base "InformationTypeType" "excludedInformationTypes"
* blockHeader.blocks.excludedInformationTypes.infoTypeId 1..1 string "infoTypeId" "infoTypeId"
* blockHeader.blocks.excludedInformationTypes.infoTypeDescription 1..1 string "infoTypeDescription" "infoTypeDescription"
* blockHeader.blocks.temporaryRevokes 0..* Base "TemporaryRevokeType" "temporaryRevokes"
* blockHeader.blocks.temporaryRevokes.temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
* blockHeader.blocks.temporaryRevokes.endDate 1..1 dateTime "endDate" "endDate"
* blockHeader.blocks.temporaryRevokes.revokedForCareUnitId 1..1 string "revokedForCareUnitId" "revokedForCareUnitId"
* blockHeader.blocks.temporaryRevokes.revokedForEmployeeId 0..1 string "revokedForEmployeeId" "revokedForEmployeeId"
* blockHeader.blocks.temporaryRevokes.ownerId 0..1 string "ownerId" "ownerId"
* blockHeader.blocks.ownerId 0..1 string "ownerId" "ownerId"
* blockHeader.nextCreatedOnOrAfter 1..1 dateTime "nextCreatedOnOrAfter" "nextCreatedOnOrAfter"
* blockHeader.latestCancellation 1..1 dateTime "latestCancellation" "latestCancellation"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetBlocksFieldDescriptions
