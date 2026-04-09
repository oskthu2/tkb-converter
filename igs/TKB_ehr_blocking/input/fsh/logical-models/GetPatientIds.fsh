// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetPatientIds v2.0 (administration)
// Genererad: 2026-04-09

Logical: GetPatientIds
Id: getpatientids
Title: "GetPatientIds"
Description: """
  Logisk modell för tjänstekontraktet GetPatientIds
  (RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2).
  Läser alla patienter med minst en aktiv spärr för en viss organisation.
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av anropet"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "Beskrivande text till svarskoden"
* patientIds 0..* string "Lista med personnummer för patienter med aktiva spärrar hos angiven vårdgivare"
