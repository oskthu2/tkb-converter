// Elementen genereras ur GetLogicalAddresseesByServiceContractResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för itintegration.registry v1.0.0 (fält ur XSD, se TKB avsnitt 6–7; scripts/xsd_to_ig.py)
// Kontrakt: GetLogicalAddresseesByServiceContract v1.0
// Genererad: 2026-09-26

Logical: GetLogicalAddresseesByServiceContract
Id: getlogicaladdresseesbyservicecontract
Title: "GetLogicalAddresseesByServiceContract — Response"
Description: """
  Logisk modell för svaret i GetLogicalAddresseesByServiceContract
  (urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* logicalAddress 0..* string "logicalAddress" "logicalAddress"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLogicalAddresseesByServiceContractFieldDescriptions
