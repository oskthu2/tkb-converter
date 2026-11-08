// Elementen genereras ur GetLogicalAddresseesByServiceContractResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:itintegration:registry v2.0
// Kontrakt: GetLogicalAddresseesByServiceContract v2.0
// Genererad: 2026-09-14

Logical: GetLogicalAddresseesByServiceContract
Id: getlogicaladdresseesbyservicecontract
Title: "GetLogicalAddresseesByServiceContract"
Description: """
  Logisk modell för tjänstekontraktet GetLogicalAddresseesByServiceContract
  (RIV-TA urn:riv:infrastructure:itintegration:registry:GetLogicalAddresseesByServiceContract:2).
  Representerar responsens informationsstruktur: en lista över logiska
  adressater som har en tjänsteproducent för angivet tjänstekontrakt och
  anropsbehörighet för angiven tjänstekonsument.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* logicalAddressRecord 0..* Base "LogicalAddresseeRecordType" "logicalAddressRecord"
* logicalAddressRecord.logicalAddress 1..1 string "logicalAddress" "logicalAddress"
* logicalAddressRecord.filter 0..* Base "FilterType" "filter"
* logicalAddressRecord.filter.serviceDomain 1..1 uri "serviceDomain" "serviceDomain"
* logicalAddressRecord.filter.categorization 0..* string "categorization" "categorization"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLogicalAddresseesByServiceContractFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* logicalAddressRecord obeys getlogicaladdresseesbyservicecontract-filter-authorization

Invariant: getlogicaladdresseesbyservicecontract-filter-authorization
Description: """
  R2 (TKB avsnitt 7.1, "Övriga regler"): behörighetsfiltrering är en
  flerstegsregel över listan av filter-poster (saknas filter-poster ska
  anropet tillåtas; annars måste meddelandets serviceDomain matcha en
  filter-post, och om den matchande posten har categorization måste
  meddelandets categorization matcha en av dessa). Detta kräver iteration
  över en lista med kombinerad AND/OR-logik mellan filter-poster och kan
  inte uttryckas fullständigt som en enkel FHIRPath-invariant på fältnivå.
  Se QUESTIONS.md för domänexpert-verifiering av en ev. förenklad
  FHIRPath-representation.
"""
Severity: #warning
