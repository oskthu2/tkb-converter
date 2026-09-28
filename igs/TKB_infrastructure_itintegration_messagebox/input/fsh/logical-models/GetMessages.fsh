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
* result 1..1 BackboneElement "result" "Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage."
  * resultCode 1..1 code "resultCode" "resultCode Heter code i schemat."
  * resultCode from ResultCodeVS (required)
  * errorId 0..1 integer "errorId" "errorId"
  * errorMessage 0..1 string "errorMessage" "errorMessage"
* responses 0..* BackboneElement "responses" "responses"
  * messageId 1..1 string "messageId" "messageId (xs:long i schemat.)"
  * targetOrganization 1..1 string "targetOrganization" "targetOrganization"
  * serviceContractType 1..1 BackboneElement "serviceContractType" "Type which describes a service contract. Used in interaction GetSupportedServiceContracts."
    * ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"
  * message 1..1 string "message" "message"
