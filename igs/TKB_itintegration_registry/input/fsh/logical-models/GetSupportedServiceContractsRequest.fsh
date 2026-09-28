// Genererad från XSD för itintegration.registry v1.0.0 (fält ur XSD, se TKB avsnitt 6–7; scripts/xsd_to_ig.py)
// Kontrakt: GetSupportedServiceContracts v1.0
// Genererad: 2026-09-26

Logical: GetSupportedServiceContractsRequest
Id: getsupportedservicecontracts-request
Title: "GetSupportedServiceContracts — Request"
Description: """
  Logisk modell för begäran i GetSupportedServiceContracts
  (urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the receiving organisation."
* serviceConsumerHsaId 1..1 string "serviceConsumerHsaId" "serviceConsumerHsaId"
* logicalAdress 1..1 string "logicalAdress" "logicalAdress"
