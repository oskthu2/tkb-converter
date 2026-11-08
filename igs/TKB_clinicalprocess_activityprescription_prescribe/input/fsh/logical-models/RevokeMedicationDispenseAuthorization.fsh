// Elementen genereras ur RevokeMedicationDispenseAuthorizationResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.0"
* medicationListVersion 0..1 Identifier "medicationListVersion" "medicationListVersion"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED."
* result.subcode 0..1 code "subcode" "subcode Tillåtna värden: SUB_RR_ERROR."
* result.logId 1..1 string "logId" "logId"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RevokeMedicationDispenseAuthorizationFieldDescriptions
