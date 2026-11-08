// Elementen genereras ur GetHealthcareFacilityResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetHealthcareFacility v2.0
// Genererad: 2026-09-26

Logical: GetHealthcareFacility
Id: gethealthcarefacility
Title: "GetHealthcareFacility — Response"
Description: """
  Logisk modell för svaret i GetHealthcareFacility
  (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* healthcareFacility 1..1 Base "OrgUnitType" "healthcareFacility"
* healthcareFacility.HSAId 1..1 Base "HSAIdType" "HSAId"
* healthcareFacility.name 0..1 string "name" "name"
* healthcareFacility.alternativeLocation 0..1 string "alternativeLocation" "alternativeLocation"
* healthcareFacility.information 0..* Base "InformationType" "information"
* healthcareFacility.information.header 1..1 string "header" "header"
* healthcareFacility.information.description 0..1 string "description" "description"
* healthcareFacility.information.link 0..1 uri "link" "link"
* healthcareFacility.conditionToConfirm 0..* Base "InformationType" "conditionToConfirm"
* healthcareFacility.conditionToConfirm.header 1..1 string "header" "header"
* healthcareFacility.conditionToConfirm.description 0..1 string "description" "description"
* healthcareFacility.conditionToConfirm.link 0..1 uri "link" "link"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthcareFacilityFieldDescriptions
