// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: RegisterMedicationPrescription v2.0
// Genererad: 2026-03-19

Logical: RegisterMedicationPrescription
Id: registermedicationprescription
Title: "RegisterMedicationPrescription"
Description: """
  Logisk modell för tjänstekontraktet RegisterMedicationPrescription
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationPrescription:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* medicationListVersion 1..1 Identifier "Ny version på patientens samlade läkemedelslista efter registrering"
* medicationPrescriptionList 1..1 BackboneElement "Ordinationslista"
  * medicationPrescriptionSequence 1..* BackboneElement "Registrerade behandlingssekvenser"
    * medicationPrescriptionSequenceId 1..1 Identifier "Tilldelat unikt id för behandlingssekvensen"
    * medicationPrescription 1..* BackboneElement "Registrerade ordinationer"
      * medicationPrescriptionId 1..1 Identifier "Tilldelat unikt id för ordinationen"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
