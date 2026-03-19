// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: DiscontinueMedication v2.0
// Genererad: 2026-03-19

Logical: DiscontinueMedication
Id: discontinuemedication
Title: "DiscontinueMedication"
Description: """
  Logisk modell för tjänstekontraktet DiscontinueMedication
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* medicationListVersion 1..1 Identifier "Ny version på patientens samlade läkemedelslista efter utsättning"
* medicationPrescription 1..1 BackboneElement "Den uppdaterade ordinationen med utsättningsinformation"
  * medicationPrescriptionId 1..1 Identifier "Ordinationens unika id"
  * endTime 1..1 dateTime "Utsättningstidpunkt (satt av producenten)"
  * revocation 1..1 BackboneElement "Utsättningsinformation"
    * revokedBy 1..1 BackboneElement "Den som satt ut ordinationen"
    * revocationReason 0..1 BackboneElement "Orsak till utsättning"
    * revocationTime 1..1 dateTime "Tidpunkt för utsättning"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
