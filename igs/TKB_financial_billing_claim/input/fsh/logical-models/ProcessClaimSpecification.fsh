// Elementen genereras ur ProcessClaimSpecificationResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för financial.billing.claim v1.1 (Genererad ur scheman i riv.financial.billing.claim, tagg 1.1; scripts/xsd_to_ig.py)
// Kontrakt: ProcessClaimSpecification v1.1
// Genererad: 2026-09-26

Logical: ProcessClaimSpecification
Id: processclaimspecification
Title: "ProcessClaimSpecification — Response"
Description: """
  Logisk modell för svaret i ProcessClaimSpecification
  (urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.1"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* resultCode from ResultCodeVS (required)
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessClaimSpecificationFieldDescriptions
