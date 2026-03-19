// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetMedicationDispenseAuthorizations v2.0
// Genererad: 2026-03-19

Logical: GetMedicationDispenseAuthorizations
Id: getmedicationdispenseauthorizations
Title: "GetMedicationDispenseAuthorizations"
Description: """
  Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2).
  Representerar responsens informationsstruktur — expedieringsunderlag per patient.
"""
Characteristics: #can-be-target

* medicationDispenseCase 0..* BackboneElement "Expedieringsärende"
    """
    En eller flera expedieringsärenden för patienten.
    """
  * medicationDispenseCaseId 1..1 Identifier "Unikt id för expedieringsärendet"
  * medicationDispenseAuthorization 1..* BackboneElement "Expedieringsunderlag"
    * dispenseAuthorizationId 1..1 Identifier "Unikt id för expedieringsunderlaget"
    * status 1..1 code "Status: ATTACHED eller NOT_ATTACHED"
    * status from DispenseAuthorizationStatusVS (required)
    * medicationInformation 1..1 BackboneElement "Läkemedelsinformation"
    * registrationData 1..1 BackboneElement "Registreringsdata"
    * startTime 1..1 dateTime "Giltighetsdatum från"
    * endTime 0..1 dateTime "Giltighetsdatum till"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
