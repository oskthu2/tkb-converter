// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: RegisterMedicationStatement v1.0
// Genererad: 2026-03-19

Logical: RegisterMedicationStatement
Id: registermedicationstatement
Title: "RegisterMedicationStatement"
Description: """
  Logisk modell för tjänstekontraktet RegisterMedicationStatement
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1).
  Representerar responsens informationsstruktur.
  RegisterMedicationStatement används för att registrera egenmedicinering.
"""
Characteristics: #can-be-target

* medicationStatement 1..* BackboneElement "Registrerade egenmediciningar"
  * registrationData 1..1 BackboneElement "Registreringsdata"
    * id 1..1 Identifier "Systeminternt id tilldelat av producenten"
    * registeredBy 1..1 BackboneElement "Den som registrerade"
    * registrationTime 1..1 dateTime "Registreringstidpunkt"
  * medicationInformation 1..1 BackboneElement "Läkemedelsinformation för egenmedicineringen"
  * startTime 1..1 dateTime "Startdatum för egenmedicineringen"
  * endTime 0..1 dateTime "Slutdatum för egenmedicineringen"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
