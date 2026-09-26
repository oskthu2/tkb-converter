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
* result 1..1 BackboneElement "result" "Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage."
  * resultCode 1..1 code "resultCode" "resultCode Heter code i schemat."
  * resultCode from ResultCodeVS (required)
  * errorId 0..1 integer "errorId" "errorId"
  * errorMessage 0..1 string "errorMessage" "errorMessage"
* messageMetas 0..* BackboneElement "messageMetas" "messageMetas"
  * messageId 1..1 string "messageId" "messageId (xs:long i schemat.)"
  * targetOrganization 1..1 string "targetOrganization" "targetOrganization"
  * serviceContractType 1..1 string "serviceContractType" "serviceContractType"
  * messageSize 1..1 string "messageSize" "messageSize (xs:long i schemat.)"
  * arrivalTime 1..1 dateTime "arrivalTime" "arrivalTime"
  * messageMetaStatus 1..1 code "messageMetaStatus" "messageMetaStatus Heter status i schemat."
  * messageMetaStatus from MessageStatusVS (required)
