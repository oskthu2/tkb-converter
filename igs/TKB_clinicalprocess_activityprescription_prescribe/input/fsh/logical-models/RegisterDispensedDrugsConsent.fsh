// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: RegisterDispensedDrugsConsent v2.0
// Genererad: 2026-03-19

Logical: RegisterDispensedDrugsConsent
Id: registerdispenseddrugsConsent
Title: "RegisterDispensedDrugsConsent"
Description: """
  Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
