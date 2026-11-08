// Elementen genereras ur GetMessagesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: GetMessages v1.0
// Genererad: 2026-09-26

Logical: GetMessages
Id: getmessages
Title: "GetMessages — Response"
Description: """
  Logisk modell för svaret i GetMessages
  (urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 1..1 Base "ResultType" "result"
* result.code 1..1 code "code" "code Tillåtna värden: OK, ERROR, INFO."
* result.code from ResultCodeVS (required)
* result.errorId 0..1 integer "errorId" "errorId"
* result.errorMessage 0..1 string "errorMessage" "errorMessage"
* responses 0..* Base "ResponseType" "responses"
* responses.messageId 1..1 string "messageId" "messageId"
* responses.targetOrganization 1..1 string "targetOrganization" "targetOrganization"
* responses.serviceContractType 1..1 string "serviceContractType" "serviceContractType"
* responses.message 1..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMessagesFieldDescriptions
