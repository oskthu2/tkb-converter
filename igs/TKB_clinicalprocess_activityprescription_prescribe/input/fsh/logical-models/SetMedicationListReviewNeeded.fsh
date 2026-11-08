// Elementen genereras ur SetMedicationListReviewNeededResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* medicationListVersion 1..1 Identifier "medicationListVersion" "medicationListVersion"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED."
* result.subcode 0..1 code "subcode" "subcode Tillåtna värden: SUB_RR_ERROR."
* result.logId 1..1 string "logId" "logId"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SetMedicationListReviewNeededFieldDescriptions
