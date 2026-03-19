// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: SetMedicationListReviewNeeded v1.0
// Genererad: 2026-03-19

Logical: SetMedicationListReviewNeeded
Id: setmedicationlistreviewneeded
Title: "SetMedicationListReviewNeeded"
Description: """
  Logisk modell för tjänstekontraktet SetMedicationListReviewNeeded
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewNeeded:1).
  Representerar responsens informationsstruktur.
  Används för att markera att en läkemedelslista behöver granskas.
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
