// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: DeleteExtendedConsent v1.0
// RIV-TA: urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: DeleteExtendedConsent
Id: deleteextendedconsent
Title: "DeleteExtendedConsent"
Description: """
  Logisk modell för tjänstekontraktet DeleteExtendedConsent
  (RIV-TA urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart
  för borttagning av felregistrerade samtycken. Samtycket raderas inte utan markeras som makulerad
  (ej längre giltig) för historikens skull. En makulering kan ej återtas.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Status för om makuleringen utfördes"
  * resultCode 1..1 CodeableConcept "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
