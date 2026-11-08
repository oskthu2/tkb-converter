// Elementen genereras ur CheckConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckConsent v2.0
// Genererad: 2026-09-26

Logical: CheckConsent
Id: checkconsent
Title: "CheckConsent — Response"
Description: """
  Logisk modell för svaret i CheckConsent
  (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* checkResult 1..1 Base "CheckResultType" "checkResult"
* checkResult.result 1..1 Base "ResultType" "result"
* checkResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* checkResult.result.resultCode from ResultCodeVS (required)
* checkResult.result.resultText 0..1 string "resultText" "resultText"
* checkResult.hasConsent 1..1 boolean "hasConsent" "hasConsent"
* checkResult.assertionType 0..1 code "assertionType" "assertionType Tillåtna värden: Consent, Emergency."
* checkResult.assertionType from AssertionTypeVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CheckConsentFieldDescriptions
