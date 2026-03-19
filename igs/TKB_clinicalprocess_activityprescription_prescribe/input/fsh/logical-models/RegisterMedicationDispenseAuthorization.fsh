// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: RegisterMedicationDispenseAuthorization v1.0
// Genererad: 2026-03-19

Logical: RegisterMedicationDispenseAuthorization
Id: registermedicationdispenseauthorization
Title: "RegisterMedicationDispenseAuthorization"
Description: """
  Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* dispenseAuthorizationId 1..1 Identifier "Tilldelat unikt id för expedieringsunderlaget"
* medicationDispenseCaseId 1..1 Identifier "Tilldelat unikt id för expedieringsärendet"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
