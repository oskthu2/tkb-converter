// Elementen genereras ur EndConsentByPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: EndConsentByPatient v1.0
// Genererad: 2026-09-26

Logical: EndConsentByPatient
Id: endconsentbypatient
Title: "EndConsentByPatient — Response"
Description: """
  Logisk modell för svaret i EndConsentByPatient
  (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert EndConsentByPatientFieldDescriptions
