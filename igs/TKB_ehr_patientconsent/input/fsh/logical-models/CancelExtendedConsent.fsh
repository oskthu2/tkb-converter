// Elementen genereras ur CancelExtendedConsentResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: CancelExtendedConsent v1.0
// RIV-TA: urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: CancelExtendedConsent
Id: cancelextendedconsent
Title: "CancelExtendedConsent"
Description: """
  Logisk modell för tjänstekontraktet CancelExtendedConsent
  (RIV-TA urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte utan markeras som
  återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultType 1..1 Base "ResultType" "ResultType"
* ResultType.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* ResultType.ResultCode from ResultCodeVS (required)
* ResultType.ResultText 1..1 string "ResultText" "ResultText"
