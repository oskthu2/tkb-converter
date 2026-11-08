// Elementen genereras ur ListMessagesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: ListMessages v1.0
// Genererad: 2026-09-26

Logical: ListMessages
Id: listmessages
Title: "ListMessages — Response"
Description: """
  Logisk modell för svaret i ListMessages
  (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 1..1 Base "ResultType" "result"
* result.code 1..1 code "code" "code Tillåtna värden: OK, ERROR, INFO."
* result.code from ResultCodeVS (required)
* result.errorId 0..1 integer "errorId" "errorId"
* result.errorMessage 0..1 string "errorMessage" "errorMessage"
* messageMetas 0..* Base "MessageMetaType" "messageMetas"
* messageMetas.messageId 1..1 string "messageId" "messageId"
* messageMetas.targetOrganization 1..1 string "targetOrganization" "targetOrganization"
* messageMetas.serviceContractType 1..1 string "serviceContractType" "serviceContractType"
* messageMetas.messageSize 1..1 string "messageSize" "messageSize"
* messageMetas.arrivalTime 1..1 dateTime "arrivalTime" "arrivalTime"
* messageMetas.status 1..1 code "status" "status Tillåtna värden: RECEIVED, RETRIEVED, DELETED."
* messageMetas.status from MessageStatusVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListMessagesFieldDescriptions
