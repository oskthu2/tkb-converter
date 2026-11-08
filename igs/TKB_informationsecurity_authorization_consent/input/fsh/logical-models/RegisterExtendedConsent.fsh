// Elementen genereras ur RegisterExtendedConsentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterExtendedConsent v2.0
// Genererad: 2026-09-26

Logical: RegisterExtendedConsent
Id: registerextendedconsent
Title: "RegisterExtendedConsent — Response"
Description: """
  Logisk modell för svaret i RegisterExtendedConsent
  (urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterExtendedConsentFieldDescriptions
