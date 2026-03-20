// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: SetMedicationListReviewed v1.0
// Genererad: 2026-03-19

Logical: SetMedicationListReviewed
Id: setmedicationlistreviewed
Title: "SetMedicationListReviewed"
Description: """
  Logisk modell för tjänstekontraktet SetMedicationListReviewed
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1).
  Representerar responsens informationsstruktur.
  Används för att markera att en läkemedelslista är genomgången (läkemedelsavstämning).
"""
Characteristics: #can-be-target

* medicationListVersion 1..1 Identifier "Ny version av läkemedelslistan efter markering"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
