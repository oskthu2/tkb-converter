// Elementen genereras ur GetSupportedServiceContractsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:itintegration:registry v2.0
// Kontrakt: GetSupportedServiceContracts v2.0
// Genererad: 2026-09-14

Logical: GetSupportedServiceContracts
Id: getsupportedservicecontracts
Title: "GetSupportedServiceContracts"
Description: """
  Logisk modell för tjänstekontraktet GetSupportedServiceContracts
  (RIV-TA urn:riv:infrastructure:itintegration:registry:GetSupportedServiceContracts:2).
  Representerar responsens informationsstruktur: en lista över
  tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat.
  Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* serviceContractNamespace 0..* Base "ServiceContractNamespaceType" "serviceContractNamespace"
* serviceContractNamespace.ServiceContractNamespace 1..1 uri "ServiceContractNamespace" "ServiceContractNamespace"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetSupportedServiceContractsFieldDescriptions
