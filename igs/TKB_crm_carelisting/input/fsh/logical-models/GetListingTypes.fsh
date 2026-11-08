// Elementen genereras ur GetListingTypes_1_0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListingTypes v1.0
// Namespace: urn:riv:crm:carelisting:GetListingTypesResponder:1
// Genererad: 2026-03-24

Logical: GetListingTypes
Id: getlistingtypes
Title: "GetListingTypes"
Description: """
  Logisk modell för tjänstekontraktet GetListingTypes (Visa listningstyp)
  (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar lista med möjliga listningstyper som en given person kan bruka vid listning.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* listingType 0..* string "Lista med koder som avser listningstyper, t.ex BVC." "Lista med koder som avser listningstyper, t.ex BVC."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetListingTypesFieldDescriptions
