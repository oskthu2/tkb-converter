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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. National: The HSA-id of Inera AB (\"national\" aggregation service) Regional: The HSA-id of region (regional aggregation service) Specific Source system: The HSA-id of the source system"
* getBinaryDataId 1..1 string "getBinaryDataId" "getBinaryDataId Heter id i schemat."
