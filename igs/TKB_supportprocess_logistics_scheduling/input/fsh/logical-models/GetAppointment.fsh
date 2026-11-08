// Elementen genereras ur GetAppointmentResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetAppointment v2.0
// Genererad: 2026-09-26

Logical: GetAppointment
Id: getappointment
Title: "GetAppointment — Response"
Description: """
  Logisk modell för svaret i GetAppointment
  (urn:riv:supportprocess:logistics:scheduling:GetAppointmentResponder:2, GetAppointmentResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* appointment 0..1 Base "AppointmentType" "appointment"
* appointment.appointmentId 1..1 string "appointmentId" "appointmentId"
* appointment.appointmentId only uuidType
* appointment.relatedAppointmentId 0..* string "relatedAppointmentId" "relatedAppointmentId"
* appointment.relatedAppointmentId only uuidType
* appointment.timeslot 1..1 Base "TimeslotType" "timeslot"
* appointment.timeslot.timeslotId 1..1 string "timeslotId" "timeslotId"
* appointment.timeslot.timeslotId only uuidType
* appointment.timeslot.timeType 1..1 Base "TimeTypeType" "timeType"
* appointment.timeslot.timeType.code 1..1 string "code" "code"
* appointment.timeslot.timeType.hidden 0..1 boolean "hidden" "hidden"
* appointment.timeslot.timeType.careContactCode 0..1 CVType "careContactCode" "careContactCode"
* appointment.timeslot.timeType.healthcareService 0..* Base "HealthcareServiceType" "healthcareService"
* appointment.timeslot.timeType.healthcareService.code 1..1 Base "SnomedCtType" "code"
* appointment.timeslot.timeType.healthcareService.information 0..* Base "InformationType" "information"
* appointment.timeslot.timeType.healthcareService.information.header 1..1 string "header" "header"
* appointment.timeslot.timeType.healthcareService.information.description 0..1 string "description" "description"
* appointment.timeslot.timeType.healthcareService.information.link 0..1 uri "link" "link"
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm 0..* Base "InformationType" "conditionsToConfirm"
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm.header 1..1 string "header" "header"
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm.description 0..1 string "description" "description"
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm.link 0..1 uri "link" "link"
* appointment.timeslot.timeType.healthcareTeam 0..1 boolean "healthcareTeam" "healthcareTeam"
* appointment.timeslot.timeType.patientGroup 0..1 boolean "patientGroup" "patientGroup"
* appointment.timeslot.timeType.cancelAppointmentAllowed 1..1 boolean "cancelAppointmentAllowed" "cancelAppointmentAllowed"
* appointment.timeslot.timeType.updateAppointmentAllowed 1..1 boolean "updateAppointmentAllowed" "updateAppointmentAllowed"
* appointment.timeslot.timeType.appointmentRule 0..3 Base "TimeTypeRulesType" "appointmentRule"
* appointment.timeslot.timeType.appointmentRule.type 1..1 code "type" "type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* appointment.timeslot.timeType.appointmentRule.type from ProcessVS (required)
* appointment.timeslot.timeType.appointmentRule.reasonTextRequired 1..1 code "reasonTextRequired" "reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* appointment.timeslot.timeType.appointmentRule.reasonTextRequired from ReasonRequiredVS (required)
* appointment.timeslot.timeType.appointmentRule.reasonCodeRequired 1..1 code "reasonCodeRequired" "reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* appointment.timeslot.timeType.appointmentRule.reasonCodeRequired from ReasonRequiredVS (required)
* appointment.timeslot.timeType.appointmentRule.reasonCodes 0..* CVType "reasonCodes" "reasonCodes"
* appointment.timeslot.timeType.appointmentRule.information 0..* Base "InformationType" "information"
* appointment.timeslot.timeType.appointmentRule.information.header 1..1 string "header" "header"
* appointment.timeslot.timeType.appointmentRule.information.description 0..1 string "description" "description"
* appointment.timeslot.timeType.appointmentRule.information.link 0..1 uri "link" "link"
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm 0..* Base "InformationType" "conditionToConfirm"
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm.header 1..1 string "header" "header"
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm.description 0..1 string "description" "description"
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm.link 0..1 uri "link" "link"
* appointment.timeslot.startTime 1..1 string "startTime" "startTime"
* appointment.timeslot.startTime only TS
* appointment.timeslot.endTime 0..1 string "endTime" "endTime"
* appointment.timeslot.endTime only TS
* appointment.timeslot.timeLength 0..1 decimal "timeLength" "timeLength"
* appointment.timeslot.healthcareFacilityHSAId 1..1 Base "HSAIdType" "healthcareFacilityHSAId"
* appointment.timeslot.practitioner 0..* Base "PractitionerType" "practitioner"
* appointment.timeslot.practitioner.HSAId 1..1 Base "HSAIdType" "HSAId"
* appointment.timeslot.practitioner.firstName 1..1 string "firstName" "firstName"
* appointment.timeslot.practitioner.lastName 1..1 string "lastName" "lastName"
* appointment.timeslot.practitioner.title 0..1 string "title" "title"
* appointment.timeslot.resource 0..* Base "ResourceType" "resource"
* appointment.timeslot.resource.typeOfResource 0..1 CVType "typeOfResource" "typeOfResource"
* appointment.timeslot.resource.resourceAttribute 0..1 CVType "resourceAttribute" "resourceAttribute"
* appointment.timeslot.resource.description 0..1 string "description" "description"
* appointment.timeslot.withinCareGuarantee 0..1 boolean "withinCareGuarantee" "withinCareGuarantee"
* appointment.timeslot.alternativeLocation 0..1 string "alternativeLocation" "alternativeLocation"
* appointment.personId 1..1 Base "PersonIdType" "personId"
* appointment.information 0..* Base "InformationType" "information"
* appointment.information.header 1..1 string "header" "header"
* appointment.information.description 0..1 string "description" "description"
* appointment.information.link 0..1 uri "link" "link"
* appointment.status 1..1 code "status" "status Tillåtna värden: confirmed, preliminary."
* appointment.status from AppointmentStatusVS (required)
* appointment.newAppointmentReasonText 0..1 string "newAppointmentReasonText" "newAppointmentReasonText"
* appointment.newAppointmentReasonCode 0..1 CVType "newAppointmentReasonCode" "newAppointmentReasonCode"
* appointment.updateAppointmentReasonText 0..1 string "updateAppointmentReasonText" "updateAppointmentReasonText"
* appointment.updateAppointmentReasonCode 0..1 CVType "updateAppointmentReasonCode" "updateAppointmentReasonCode"
* appointment.alternativeLocation 0..1 string "alternativeLocation" "alternativeLocation"
* appointment.reference 0..* Base "ReferenceType" "reference"
* appointment.reference.name 1..1 string "name" "name"
* appointment.reference.description 0..1 string "description" "description"
* appointment.reference.link 0..1 uri "link" "link"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAppointmentFieldDescriptions
