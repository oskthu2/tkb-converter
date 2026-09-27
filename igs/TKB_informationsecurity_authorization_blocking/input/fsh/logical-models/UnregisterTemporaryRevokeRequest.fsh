// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: UnregisterTemporaryRevoke v4.0
// Genererad: 2026-09-26

Logical: UnregisterTemporaryRevokeRequest
Id: unregistertemporaryrevoke-request
Title: "UnregisterTemporaryRevoke — Request"
Description: """
  Logisk modell för begäran i UnregisterTemporaryRevoke
  (urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges SE165565594230-1000."
* temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
