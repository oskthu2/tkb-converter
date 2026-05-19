// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: RegisterExtendedConsent v1.0
// RIV-TA: urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: RegisterExtendedConsent
Id: registerextendedconsent
Title: "RegisterExtendedConsent"
Description: """
  Logisk modell för tjänstekontraktet RegisterExtendedConsent
  (RIV-TA urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens
  information från andra vårdgivare enligt PDL. Intyget avser patientens aktiva medgivande (samtycke),
  alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Status för om registreringen utfördes"
  * resultCode 1..1 CodeableConcept "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
