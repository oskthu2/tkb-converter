// Elementen genereras ur DeleteMessagesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: DeleteMessages v1.0
// Genererad: 2026-09-26

Logical: DeleteMessages
Id: deletemessages
Title: "DeleteMessages — Response"
Description: """
  Logisk modell för svaret i DeleteMessages
  (urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 1..1 Base "ResultType" "result"
* result.code 1..1 code "code" "code Tillåtna värden: OK, ERROR, INFO."
* result.code from ResultCodeVS (required)
* result.errorId 0..1 integer "errorId" "errorId"
* result.errorMessage 0..1 string "errorMessage" "errorMessage"
* deletedIds 0..* string "deletedIds" "deletedIds"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteMessagesFieldDescriptions
