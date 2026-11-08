// Elementen genereras ur GetAvailableDatesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableDates v2.0
// Genererad: 2026-09-26

Logical: GetAvailableDates
Id: getavailabledates
Title: "GetAvailableDates — Response"
Description: """
  Logisk modell för svaret i GetAvailableDates
  (urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* availableDate 0..* Base "AvailableDateType" "availableDate"
* availableDate.date 1..1 string "date" "date"
* availableDate.date only DT
* availableDate.noOfTimeslots 1..1 integer "noOfTimeslots" "noOfTimeslots"
* availableDate.timeType 1..1 Base "TimeTypeType" "timeType"
* availableDate.timeType.code 1..1 string "code" "code"
* availableDate.timeType.hidden 0..1 boolean "hidden" "hidden"
* availableDate.timeType.careContactCode 0..1 CVType "careContactCode" "careContactCode"
* availableDate.timeType.healthcareService 0..* Base "HealthcareServiceType" "healthcareService"
* availableDate.timeType.healthcareService.code 1..1 Base "SnomedCtType" "code"
* availableDate.timeType.healthcareService.information 0..* Base "InformationType" "information"
* availableDate.timeType.healthcareService.information.header 1..1 string "header" "header"
* availableDate.timeType.healthcareService.information.description 0..1 string "description" "description"
* availableDate.timeType.healthcareService.information.link 0..1 uri "link" "link"
* availableDate.timeType.healthcareService.conditionsToConfirm 0..* Base "InformationType" "conditionsToConfirm"
* availableDate.timeType.healthcareService.conditionsToConfirm.header 1..1 string "header" "header"
* availableDate.timeType.healthcareService.conditionsToConfirm.description 0..1 string "description" "description"
* availableDate.timeType.healthcareService.conditionsToConfirm.link 0..1 uri "link" "link"
* availableDate.timeType.healthcareTeam 0..1 boolean "healthcareTeam" "healthcareTeam"
* availableDate.timeType.patientGroup 0..1 boolean "patientGroup" "patientGroup"
* availableDate.timeType.cancelAppointmentAllowed 1..1 boolean "cancelAppointmentAllowed" "cancelAppointmentAllowed"
* availableDate.timeType.updateAppointmentAllowed 1..1 boolean "updateAppointmentAllowed" "updateAppointmentAllowed"
* availableDate.timeType.appointmentRule 0..3 Base "TimeTypeRulesType" "appointmentRule"
* availableDate.timeType.appointmentRule.type 1..1 code "type" "type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* availableDate.timeType.appointmentRule.type from ProcessVS (required)
* availableDate.timeType.appointmentRule.reasonTextRequired 1..1 code "reasonTextRequired" "reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* availableDate.timeType.appointmentRule.reasonTextRequired from ReasonRequiredVS (required)
* availableDate.timeType.appointmentRule.reasonCodeRequired 1..1 code "reasonCodeRequired" "reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* availableDate.timeType.appointmentRule.reasonCodeRequired from ReasonRequiredVS (required)
* availableDate.timeType.appointmentRule.reasonCodes 0..* CVType "reasonCodes" "reasonCodes"
* availableDate.timeType.appointmentRule.information 0..* Base "InformationType" "information"
* availableDate.timeType.appointmentRule.information.header 1..1 string "header" "header"
* availableDate.timeType.appointmentRule.information.description 0..1 string "description" "description"
* availableDate.timeType.appointmentRule.information.link 0..1 uri "link" "link"
* availableDate.timeType.appointmentRule.conditionToConfirm 0..* Base "InformationType" "conditionToConfirm"
* availableDate.timeType.appointmentRule.conditionToConfirm.header 1..1 string "header" "header"
* availableDate.timeType.appointmentRule.conditionToConfirm.description 0..1 string "description" "description"
* availableDate.timeType.appointmentRule.conditionToConfirm.link 0..1 uri "link" "link"
* availableDate.practitioner 0..1 Base "PractitionerType" "practitioner"
* availableDate.practitioner.HSAId 1..1 Base "HSAIdType" "HSAId"
* availableDate.practitioner.firstName 1..1 string "firstName" "firstName"
* availableDate.practitioner.lastName 1..1 string "lastName" "lastName"
* availableDate.practitioner.title 0..1 string "title" "title"
* availableDate.resource 0..1 Base "ResourceType" "resource"
* availableDate.resource.typeOfResource 0..1 CVType "typeOfResource" "typeOfResource"
* availableDate.resource.resourceAttribute 0..1 CVType "resourceAttribute" "resourceAttribute"
* availableDate.resource.description 0..1 string "description" "description"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableDatesFieldDescriptions
