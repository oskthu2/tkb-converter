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
* binaryData 0..1 BackboneElement "binaryData" "binaryData"
  * contentType 1..1 string "contentType" "contentType"
  * data 1..1 base64Binary "data" "data"
* result 1..1 BackboneElement "result" "result"
  * resultCode 1..1 code "resultCode" "resultCode"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "resultText" "resultText"
