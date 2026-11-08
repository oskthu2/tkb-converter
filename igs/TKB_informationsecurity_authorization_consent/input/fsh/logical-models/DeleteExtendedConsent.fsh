// Elementen genereras ur DeleteExtendedConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: DeleteExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: DeleteExtendedConsent
Id: deleteextendedconsent
Title: "DeleteExtendedConsent — Response"
Description: """
  Logisk modell för svaret i DeleteExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteExtendedConsentFieldDescriptions
