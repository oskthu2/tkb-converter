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

* result 1..1 BackboneElement "Statusinformation för anropet"
  * resultCode 1..1 CodeableConcept "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
* hasConsent 1..1 boolean "Om ett giltigt intyg gällande åtkomst för angiven aktör hittades"
* assertionType 0..1 CodeableConcept "Typ av funnet intyg (Consent eller Emergency)"
  """
  Returneras om ett giltigt intyg hittades (hasConsent = true).
  Anger om det är ett samtycke eller nödsituationsintyg.
  """
* assertionType from AssertionTypeVS (required)
