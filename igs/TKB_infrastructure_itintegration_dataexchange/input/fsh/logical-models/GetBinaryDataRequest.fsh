// Elementen genereras ur GetBinaryDataResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.dataexchange v1.0 (Genererad ur scheman i riv.infrastructure.itintegration.dataexchange, develop 7fdd1d090b32; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetBinaryData v1.0
// Genererad: 2026-09-26

Logical: GetBinaryDataRequest
Id: getbinarydata-request
Title: "GetBinaryData — Request"
Description: """
  Logisk modell för begäran i GetBinaryData
  (urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* id 1..1 string "id" "id"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetBinaryDataRequestFieldDescriptions
