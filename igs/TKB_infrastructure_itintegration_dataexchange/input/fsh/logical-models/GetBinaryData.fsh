// Elementen genereras ur GetBinaryDataResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.itintegration.dataexchange v1.0 (Genererad ur scheman i riv.infrastructure.itintegration.dataexchange, develop 7fdd1d090b32; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetBinaryData v1.0
// Genererad: 2026-09-26

Logical: GetBinaryData
Id: getbinarydata
Title: "GetBinaryData — Response"
Description: """
  Logisk modell för svaret i GetBinaryData
  (urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* binaryData 0..1 Base "BinaryDataType" "binaryData"
* binaryData.contentType 1..1 string "contentType" "contentType"
* binaryData.data 1..1 base64Binary "data" "data"
* result 1..1 ResultType "result" "result"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetBinaryDataFieldDescriptions
