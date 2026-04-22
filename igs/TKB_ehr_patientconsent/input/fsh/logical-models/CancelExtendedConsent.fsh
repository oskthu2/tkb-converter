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

* result 1..1 BackboneElement "Status för om återkallningen utfördes"
  * resultCode 1..1 CodeableConcept "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
