// Elementen genereras ur GetSubjectOfCareScheduleResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetSubjectOfCareSchedule v1.1
// Genererad: 2026-03-24

Logical: GetSubjectOfCareSchedule
Id: getsubjectofcareschedule
Title: "GetSubjectOfCareSchedule"
Description: """
  Logisk modell för tjänstekontraktet GetSubjectOfCareSchedule
  (RIV-TA urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar alla bokade tider för en invånare.
  Öppna kallelser ingår inte i svaret.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* timeslotDetail 0..* Base "TimeslotType" "timeslotDetail"
* timeslotDetail.startTimeInclusive 0..1 string "startTimeInclusive" "startTimeInclusive"
* timeslotDetail.startTimeInclusive only TS
* timeslotDetail.endTimeExclusive 0..1 string "endTimeExclusive" "endTimeExclusive"
* timeslotDetail.endTimeExclusive only TS
* timeslotDetail.healthcare_facility 1..1 string "healthcare_facility" "healthcare_facility"
* timeslotDetail.performer 0..1 string "performer" "performer"
* timeslotDetail.bookingId 0..1 string "bookingId" "bookingId"
* timeslotDetail.subject_of_care 0..1 string "subject_of_care" "subject_of_care"
* timeslotDetail.subject_of_care only SubjectOfCareIdType
* timeslotDetail.purpose 0..1 string "purpose" "purpose"
* timeslotDetail.reason 0..1 string "reason" "reason"
* timeslotDetail.resourceName 0..1 string "resourceName" "resourceName"
* timeslotDetail.healthcare_facility_name 0..1 string "healthcare_facility_name" "healthcare_facility_name"
* timeslotDetail.performerName 0..1 string "performerName" "performerName"
* timeslotDetail.resourceID 0..1 string "resourceID" "resourceID"
* timeslotDetail.timeTypeName 0..1 string "timeTypeName" "timeTypeName"
* timeslotDetail.timeTypeID 0..1 string "timeTypeID" "timeTypeID"
* timeslotDetail.careTypeName 0..1 string "careTypeName" "careTypeName"
* timeslotDetail.careTypeID 0..1 string "careTypeID" "careTypeID"
* timeslotDetail.cancel_booking_allowed 0..1 boolean "cancel_booking_allowed" "cancel_booking_allowed"
* timeslotDetail.rebooking_allowed 0..1 boolean "rebooking_allowed" "rebooking_allowed"
* timeslotDetail.message_allowed 0..1 boolean "message_allowed" "message_allowed"
* timeslotDetail.isInvitation 0..1 boolean "isInvitation" "isInvitation"
