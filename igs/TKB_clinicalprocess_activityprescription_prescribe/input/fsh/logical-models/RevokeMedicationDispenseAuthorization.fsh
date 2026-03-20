// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: RevokeMedicationDispenseAuthorization v2.0
// Genererad: 2026-03-19

Logical: RevokeMedicationDispenseAuthorization
Id: revokemedicationdispenseauthorization
Title: "RevokeMedicationDispenseAuthorization"
Description: """
  Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2).
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
