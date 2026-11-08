// Elementen genereras ur GetBlocksResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetBlocks v4.0
// Genererad: 2026-09-26

Logical: GetBlocksRequest
Id: getblocks-request
Title: "GetBlocks — Request"
Description: """
  Logisk modell för begäran i GetBlocks
  (urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4, GetBlocksType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* patientId 0..1 IIType "patientId" "patientId"
* careProviderIds 0..* string "careProviderIds" "careProviderIds"
* createdOnOrAfter 0..1 dateTime "createdOnOrAfter" "createdOnOrAfter"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetBlocksRequestFieldDescriptions
