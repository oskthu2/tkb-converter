// Elementen genereras ur GetMessagesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: GetMessages v1.0
// Genererad: 2026-09-26

Logical: GetMessagesRequest
Id: getmessages-request
Title: "GetMessages — Request"
Description: """
  Logisk modell för begäran i GetMessages
  (urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* messageIds 1..* string "messageIds" "messageIds"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMessagesRequestFieldDescriptions
