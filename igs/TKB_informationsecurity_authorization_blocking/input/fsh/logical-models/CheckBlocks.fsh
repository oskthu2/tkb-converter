// Elementen genereras ur CheckBlocksResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckBlocks v4.0
// Genererad: 2026-09-26

Logical: CheckBlocks
Id: checkblocks
Title: "CheckBlocks — Response"
Description: """
  Logisk modell för svaret i CheckBlocks
  (urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* checkBlocksResult 1..1 Base "CheckBlocksResultType" "checkBlocksResult"
* checkBlocksResult.result 1..1 Base "ResultType" "result"
* checkBlocksResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* checkBlocksResult.result.resultCode from ResultCodeVS (required)
* checkBlocksResult.result.resultText 0..1 string "resultText" "resultText"
* checkBlocksResult.checkResults 0..* Base "CheckResultType" "checkResults"
* checkBlocksResult.checkResults.status 1..1 code "status" "status Tillåtna värden: OK, BLOCKED, VALIDATIONERROR."
* checkBlocksResult.checkResults.status from CheckStatusVS (required)
* checkBlocksResult.checkResults.rowNumber 1..1 integer "rowNumber" "rowNumber"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CheckBlocksFieldDescriptions
