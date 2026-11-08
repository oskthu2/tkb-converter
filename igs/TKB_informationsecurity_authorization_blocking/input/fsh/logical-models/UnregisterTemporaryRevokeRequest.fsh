// Elementen genereras ur UnregisterTemporaryRevokeResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "4.0"
* temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UnregisterTemporaryRevokeRequestFieldDescriptions
