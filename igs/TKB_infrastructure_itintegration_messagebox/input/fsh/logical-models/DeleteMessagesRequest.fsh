// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: DeleteMessages v1.0
// Genererad: 2026-09-26

Logical: DeleteMessagesRequest
Id: deletemessages-request
Title: "DeleteMessages — Request"
Description: """
  Logisk modell för begäran i DeleteMessages
  (urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the National Service Platform"
* messageIds 1..* string "messageIds" "messageIds (xs:long i schemat.)"
