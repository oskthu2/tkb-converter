// Elementen genereras ur GetLogicalAddresseesByServiceContractResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* serviceConsumerHsaId 1..1 string "serviceConsumerHsaId" "serviceConsumerHsaId"
* serviceContractNameSpace 1..1 Base "ServiceContractNamespaceType" "serviceContractNameSpace"
* serviceContractNameSpace.ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLogicalAddresseesByServiceContractRequestFieldDescriptions
