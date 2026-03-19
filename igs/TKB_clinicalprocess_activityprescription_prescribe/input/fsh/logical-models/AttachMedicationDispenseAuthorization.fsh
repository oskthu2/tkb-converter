// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: AttachMedicationDispenseAuthorization v2.0
// Genererad: 2026-03-19

Logical: AttachMedicationDispenseAuthorization
Id: attachmedicationdispenseauthorization
Title: "AttachMedicationDispenseAuthorization"
Description: """
  Logisk modell för tjänstekontraktet AttachMedicationDispenseAuthorization
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:AttachMedicationDispenseAuthorization:2).
  Representerar responsens informationsstruktur — kopplar ett expedieringsunderlag till en ordination.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
