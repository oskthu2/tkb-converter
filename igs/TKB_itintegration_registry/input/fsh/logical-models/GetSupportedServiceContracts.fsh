// Elementen genereras ur GetSupportedServiceContractsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* serviceContractNamespace 0..* Base "ServiceContractNamespaceType" "serviceContractNamespace"
* serviceContractNamespace.ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetSupportedServiceContractsFieldDescriptions
