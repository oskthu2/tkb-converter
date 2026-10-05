// Genererad från XSD för itintegration.registry v1.0.0 (fält ur XSD, se TKB avsnitt 6–7; scripts/xsd_to_ig.py)
// Kontrakt: GetSupportedServiceContracts v1.0
// Genererad: 2026-09-26

Logical: GetSupportedServiceContracts
Id: getsupportedservicecontracts
Title: "GetSupportedServiceContracts — Response"
Description: """
  Logisk modell för svaret i GetSupportedServiceContracts
  (urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsResponseType).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* serviceContractNamespace 0..* BackboneElement "serviceContractNamespace" "Type which describes a service contract."
  * ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"
