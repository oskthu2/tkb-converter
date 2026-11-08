// Elementen genereras ur UpdateBookingResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: UpdateBooking v1.1 — Request
// Genererad: 2026-03-24

Logical: UpdateBookingRequest
Id: updatebooking-request
Title: "UpdateBooking — Request"
Description: "Logisk modell för requestparametrar i UpdateBooking."
Characteristics: #can-be-target

* ^version = "1.1"
* requestedTimeslot 1..1 Base "TimeslotType" "requestedTimeslot"
* requestedTimeslot.startTimeInclusive 0..1 string "startTimeInclusive" "startTimeInclusive"
* requestedTimeslot.startTimeInclusive only TS
* requestedTimeslot.endTimeExclusive 0..1 string "endTimeExclusive" "endTimeExclusive"
* requestedTimeslot.endTimeExclusive only TS
* requestedTimeslot.healthcare_facility 1..1 string "healthcare_facility" "healthcare_facility"
* requestedTimeslot.performer 0..1 string "performer" "performer"
* requestedTimeslot.bookingId 0..1 string "bookingId" "bookingId"
* requestedTimeslot.subject_of_care 0..1 string "subject_of_care" "subject_of_care"
* requestedTimeslot.subject_of_care only SubjectOfCareIdType
* requestedTimeslot.purpose 0..1 string "purpose" "purpose"
* requestedTimeslot.reason 0..1 string "reason" "reason"
* requestedTimeslot.resourceName 0..1 string "resourceName" "resourceName"
* requestedTimeslot.healthcare_facility_name 0..1 string "healthcare_facility_name" "healthcare_facility_name"
* requestedTimeslot.performerName 0..1 string "performerName" "performerName"
* requestedTimeslot.resourceID 0..1 string "resourceID" "resourceID"
* requestedTimeslot.timeTypeName 0..1 string "timeTypeName" "timeTypeName"
* requestedTimeslot.timeTypeID 0..1 string "timeTypeID" "timeTypeID"
* requestedTimeslot.careTypeName 0..1 string "careTypeName" "careTypeName"
* requestedTimeslot.careTypeID 0..1 string "careTypeID" "careTypeID"
* requestedTimeslot.cancel_booking_allowed 0..1 boolean "cancel_booking_allowed" "cancel_booking_allowed"
* requestedTimeslot.rebooking_allowed 0..1 boolean "rebooking_allowed" "rebooking_allowed"
* requestedTimeslot.message_allowed 0..1 boolean "message_allowed" "message_allowed"
* requestedTimeslot.isInvitation 0..1 boolean "isInvitation" "isInvitation"
* subject_of_care_info 0..1 Base "SubjectOfCareType" "subject_of_care_info"
* subject_of_care_info.phone 0..1 string "phone" "phone"
* subject_of_care_info.email 0..1 string "email" "email"
* subject_of_care_info.address 0..1 string "address" "address"
* subject_of_care_info.coaddress 0..1 string "coaddress" "coaddress"
* subject_of_care_info.firstName 1..1 string "firstName" "firstName"
* subject_of_care_info.middleName 0..1 string "middleName" "middleName"
* subject_of_care_info.lastName 1..1 string "lastName" "lastName"
* notification 0..1 string "notification" "notification"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateBookingRequestFieldDescriptions
