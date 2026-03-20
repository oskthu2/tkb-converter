// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: CheckMedicationListVersion v1.0
// Genererad: 2026-03-19

Logical: CheckMedicationListVersion
Id: checkmedicationlistversion
Title: "CheckMedicationListVersion"
Description: """
  Logisk modell för tjänstekontraktet CheckMedicationListVersion
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1).
  Representerar responsens informationsstruktur.
  Används för att kontrollera om en given läkemedelslisteversion är aktuell.
"""
Characteristics: #can-be-target

* isCurrentVersion 1..1 boolean "Sant om angiven version är den senaste versionen av läkemedelslistan"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * subcode 0..1 string "Subkod (inga subkoder specificerade i v1.0)"
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
