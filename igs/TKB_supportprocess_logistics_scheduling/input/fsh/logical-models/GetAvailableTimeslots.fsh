// Elementen genereras ur GetAvailableTimeslotsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableTimeslots v2.0
// Genererad: 2026-09-26

Logical: GetAvailableTimeslots
Id: getavailabletimeslots
Title: "GetAvailableTimeslots — Response"
Description: """
  Logisk modell för svaret i GetAvailableTimeslots
  (urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* timeslot 0..* Base "TimeslotType" "timeslot"
* timeslot.timeslotId 1..1 string "timeslotId" "timeslotId"
* timeslot.timeslotId only uuidType
* timeslot.timeType 1..1 Base "TimeTypeType" "timeType"
* timeslot.timeType.code 1..1 string "code" "code"
* timeslot.timeType.hidden 0..1 boolean "hidden" "hidden"
* timeslot.timeType.careContactCode 0..1 CVType "careContactCode" "careContactCode"
* timeslot.timeType.healthcareService 0..* Base "HealthcareServiceType" "healthcareService"
* timeslot.timeType.healthcareService.code 1..1 Base "SnomedCtType" "code"
* timeslot.timeType.healthcareService.information 0..* Base "InformationType" "information"
* timeslot.timeType.healthcareService.information.header 1..1 string "header" "header"
* timeslot.timeType.healthcareService.information.description 0..1 string "description" "description"
* timeslot.timeType.healthcareService.information.link 0..1 uri "link" "link"
* timeslot.timeType.healthcareService.conditionsToConfirm 0..* Base "InformationType" "conditionsToConfirm"
* timeslot.timeType.healthcareService.conditionsToConfirm.header 1..1 string "header" "header"
* timeslot.timeType.healthcareService.conditionsToConfirm.description 0..1 string "description" "description"
* timeslot.timeType.healthcareService.conditionsToConfirm.link 0..1 uri "link" "link"
* timeslot.timeType.healthcareTeam 0..1 boolean "healthcareTeam" "healthcareTeam"
* timeslot.timeType.patientGroup 0..1 boolean "patientGroup" "patientGroup"
* timeslot.timeType.cancelAppointmentAllowed 1..1 boolean "cancelAppointmentAllowed" "cancelAppointmentAllowed"
* timeslot.timeType.updateAppointmentAllowed 1..1 boolean "updateAppointmentAllowed" "updateAppointmentAllowed"
* timeslot.timeType.appointmentRule 0..3 Base "TimeTypeRulesType" "appointmentRule"
* timeslot.timeType.appointmentRule.type 1..1 code "type" "type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* timeslot.timeType.appointmentRule.type from ProcessVS (required)
* timeslot.timeType.appointmentRule.reasonTextRequired 1..1 code "reasonTextRequired" "reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeslot.timeType.appointmentRule.reasonTextRequired from ReasonRequiredVS (required)
* timeslot.timeType.appointmentRule.reasonCodeRequired 1..1 code "reasonCodeRequired" "reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* timeslot.timeType.appointmentRule.reasonCodeRequired from ReasonRequiredVS (required)
* timeslot.timeType.appointmentRule.reasonCodes 0..* CVType "reasonCodes" "reasonCodes"
* timeslot.timeType.appointmentRule.information 0..* Base "InformationType" "information"
* timeslot.timeType.appointmentRule.information.header 1..1 string "header" "header"
* timeslot.timeType.appointmentRule.information.description 0..1 string "description" "description"
* timeslot.timeType.appointmentRule.information.link 0..1 uri "link" "link"
* timeslot.timeType.appointmentRule.conditionToConfirm 0..* Base "InformationType" "conditionToConfirm"
* timeslot.timeType.appointmentRule.conditionToConfirm.header 1..1 string "header" "header"
* timeslot.timeType.appointmentRule.conditionToConfirm.description 0..1 string "description" "description"
* timeslot.timeType.appointmentRule.conditionToConfirm.link 0..1 uri "link" "link"
* timeslot.startTime 1..1 string "startTime" "startTime"
* timeslot.startTime only TS
* timeslot.endTime 0..1 string "endTime" "endTime"
* timeslot.endTime only TS
* timeslot.timeLength 0..1 decimal "timeLength" "timeLength"
* timeslot.healthcareFacilityHSAId 1..1 Base "HSAIdType" "healthcareFacilityHSAId"
* timeslot.practitioner 0..* Base "PractitionerType" "practitioner"
* timeslot.practitioner.HSAId 1..1 Base "HSAIdType" "HSAId"
* timeslot.practitioner.firstName 1..1 string "firstName" "firstName"
* timeslot.practitioner.lastName 1..1 string "lastName" "lastName"
* timeslot.practitioner.title 0..1 string "title" "title"
* timeslot.resource 0..* Base "ResourceType" "resource"
* timeslot.resource.typeOfResource 0..1 CVType "typeOfResource" "typeOfResource"
* timeslot.resource.resourceAttribute 0..1 CVType "resourceAttribute" "resourceAttribute"
* timeslot.resource.description 0..1 string "description" "description"
* timeslot.withinCareGuarantee 0..1 boolean "withinCareGuarantee" "withinCareGuarantee"
* timeslot.alternativeLocation 0..1 string "alternativeLocation" "alternativeLocation"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableTimeslotsFieldDescriptions
