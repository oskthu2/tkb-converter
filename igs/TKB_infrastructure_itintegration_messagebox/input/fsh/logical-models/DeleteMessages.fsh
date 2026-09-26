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
* result 1..1 BackboneElement "result" "Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage."
  * resultCode 1..1 code "resultCode" "resultCode Heter code i schemat."
  * resultCode from ResultCodeVS (required)
  * errorId 0..1 integer "errorId" "errorId"
  * errorMessage 0..1 string "errorMessage" "errorMessage"
* deletedIds 0..* string "deletedIds" "deletedIds (xs:long i schemat.)"
