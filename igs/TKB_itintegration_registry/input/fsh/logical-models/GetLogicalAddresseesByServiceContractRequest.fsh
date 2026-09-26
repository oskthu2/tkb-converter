// Genererad från XSD för itintegration.registry v1.0.0 (fält ur XSD, se TKB avsnitt 6–7; scripts/xsd_to_ig.py)
// Kontrakt: GetLogicalAddresseesByServiceContract v1.0
// Genererad: 2026-09-26

Logical: GetLogicalAddresseesByServiceContractRequest
Id: getlogicaladdresseesbyservicecontract-request
Title: "GetLogicalAddresseesByServiceContract — Request"
Description: """
  Logisk modell för begäran i GetLogicalAddresseesByServiceContract
  (urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The hsaid of the organisation owning the repository to be queried."
* serviceConsumerHsaId 1..1 string "serviceConsumerHsaId" "serviceConsumerHsaId"
* serviceContractNameSpace 1..1 BackboneElement "serviceContractNameSpace" "Type which describes a service contract."
  * ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"
