// Elementen genereras ur UpdateListingResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: UpdateListing v2.0
// Genererad: 2026-09-26

Logical: UpdateListing
Id: updatelisting
Title: "UpdateListing — Response"
Description: """
  Logisk modell för svaret i UpdateListing
  (urn:riv:supportprocess:logistics:carelisting:UpdateListingResponder:2, UpdateListingResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateListingFieldDescriptions
