// Elementen genereras ur CheckConsentResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: CheckConsent v1.0
// RIV-TA: urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1
// Genererad: 2026-04-22

Logical: CheckConsent
Id: checkconsent
Title: "CheckConsent"
Description: """
  Logisk modell för tjänstekontraktet CheckConsent
  (RIV-TA urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation,
  gällande åtkomst för viss aktör (vårdenhet eller medarbetare). Med giltigt samtycke avses ett
  samtycke som fortfarande är giltigt, ej makulerat eller återkallat.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* CheckResultType 1..1 Base "CheckResultType" "CheckResultType"
* CheckResultType.Result 1..1 Base "ResultType" "Result"
* CheckResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* CheckResultType.Result.ResultCode from ResultCodeVS (required)
* CheckResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* CheckResultType.HasConsent 1..1 boolean "HasConsent" "HasConsent"
* CheckResultType.AssertionType 0..1 code "AssertionType" "AssertionType Tillåtna värden: Consent, Emergency."
* CheckResultType.AssertionType from AssertionTypeVS (required)
