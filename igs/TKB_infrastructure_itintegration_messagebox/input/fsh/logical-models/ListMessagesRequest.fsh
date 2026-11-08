// Elementen genereras ur ListMessagesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.messagebox v1.0.0 (fält ur XSD, se TKB avsnitt 6; scripts/xsd_to_ig.py)
// Kontrakt: ListMessages v1.0
// Genererad: 2026-09-26

Logical: ListMessagesRequest
Id: listmessages-request
Title: "ListMessages — Request"
Description: """
  Logisk modell för begäran i ListMessages
  (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* targetOrganizations 0..* string "targetOrganizations" "targetOrganizations"
* serviceContractTypes 0..* string "serviceContractTypes" "serviceContractTypes"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListMessagesRequestFieldDescriptions
