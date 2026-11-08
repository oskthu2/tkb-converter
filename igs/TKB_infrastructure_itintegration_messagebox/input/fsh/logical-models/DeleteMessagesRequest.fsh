// Elementen genereras ur DeleteMessagesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* messageIds 1..* string "messageIds" "messageIds"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteMessagesRequestFieldDescriptions
