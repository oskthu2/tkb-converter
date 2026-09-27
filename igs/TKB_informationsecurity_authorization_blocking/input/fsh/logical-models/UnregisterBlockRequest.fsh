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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges SE165565594230-1000."
* blockId 1..1 string "blockId" "blockId"
