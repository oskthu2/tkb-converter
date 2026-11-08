// Elementen genereras ur GetTimeTypesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetTimeTypes v2.0
// Genererad: 2026-09-26

Logical: GetTimeTypes
Id: gettimetypes
Title: "GetTimeTypes — Response"
Description: """
  Logisk modell för svaret i GetTimeTypes
  (urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* timeType 0..* Base "TimeTypeType" "timeType"
* timeType.code 1..1 string "code" "code"
* timeType.hidden 0..1 boolean "hidden" "hidden"
* timeType.careContactCode 0..1 CVType "careContactCode" "careContactCode"
* timeType.healthcareService 0..* Base "HealthcareServiceType" "healthcareService"
* timeType.healthcareService.code 1..1 Base "SnomedCtType" "code"
* timeType.healthcareService.information 0..* Base "InformationType" "information"
* timeType.healthcareService.information.header 1..1 string "header" "header"
* timeType.healthcareService.information.description 0..1 string "description" "description"
* timeType.healthcareService.information.link 0..1 uri "link" "link"
* timeType.healthcareService.conditionsToConfirm 0..* Base "InformationType" "conditionsToConfirm"
* timeType.healthcareService.conditionsToConfirm.header 1..1 string "header" "header"
* timeType.healthcareService.conditionsToConfirm.description 0..1 string "description" "description"
* timeType.healthcareService.conditionsToConfirm.link 0..1 uri "link" "link"
* timeType.healthcareTeam 0..1 boolean "healthcareTeam" "healthcareTeam"
* timeType.patientGroup 0..1 boolean "patientGroup" "patientGroup"
* timeType.cancelAppointmentAllowed 1..1 boolean "cancelAppointmentAllowed" "cancelAppointmentAllowed"
* timeType.updateAppointmentAllowed 1..1 boolean "updateAppointmentAllowed" "updateAppointmentAllowed"
* timeType.appointmentRule 0..3 Base "TimeTypeRulesType" "appointmentRule"
* timeType.appointmentRule.type 1..1 code "type" "type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* timeType.appointmentRule.type from ProcessVS (required)
* timeType.appointmentRule.reasonTextRequired 1..1 code "reasonTextRequired" "reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeType.appointmentRule.reasonTextRequired from ReasonRequiredVS (required)
* timeType.appointmentRule.reasonCodeRequired 1..1 code "reasonCodeRequired" "reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeType.appointmentRule.reasonCodeRequired from ReasonRequiredVS (required)
* timeType.appointmentRule.reasonCodes 0..* CVType "reasonCodes" "reasonCodes"
* timeType.appointmentRule.information 0..* Base "InformationType" "information"
* timeType.appointmentRule.information.header 1..1 string "header" "header"
* timeType.appointmentRule.information.description 0..1 string "description" "description"
* timeType.appointmentRule.information.link 0..1 uri "link" "link"
* timeType.appointmentRule.conditionToConfirm 0..* Base "InformationType" "conditionToConfirm"
* timeType.appointmentRule.conditionToConfirm.header 1..1 string "header" "header"
* timeType.appointmentRule.conditionToConfirm.description 0..1 string "description" "description"
* timeType.appointmentRule.conditionToConfirm.link 0..1 uri "link" "link"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetTimeTypesFieldDescriptions
