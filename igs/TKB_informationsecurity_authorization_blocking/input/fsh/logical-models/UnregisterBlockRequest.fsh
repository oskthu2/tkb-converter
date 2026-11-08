// Elementen genereras ur UnregisterBlockResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: UnregisterBlock v4.0
// Genererad: 2026-09-26

Logical: UnregisterBlockRequest
Id: unregisterblock-request
Title: "UnregisterBlock — Request"
Description: """
  Logisk modell för begäran i UnregisterBlock
  (urn:riv:informationsecurity:authorization:blocking:UnregisterBlockResponder:4, UnregisterBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* blockId 1..1 string "blockId" "blockId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UnregisterBlockRequestFieldDescriptions
