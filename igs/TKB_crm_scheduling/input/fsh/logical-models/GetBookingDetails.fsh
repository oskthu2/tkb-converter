// Elementen genereras ur GetBookingDetailsResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetBookingDetails v1.1
// Genererad: 2026-03-24

Logical: GetBookingDetails
Id: getbookingdetails
Title: "GetBookingDetails"
Description: """
  Logisk modell för tjänstekontraktet GetBookingDetails
  (RIV-TA urn:riv:crm:scheduling:GetBookingDetails:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* timeslotDetail 1..1 Base "TimeslotType" "timeslotDetail"
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

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* timeslotDetail obeys getbookingdetails-purpose-required

Invariant: getbookingdetails-purpose-required
Description: "purpose ska anges om isInvitation är true (kallelse)"
Expression: "isInvitation = true implies purpose.exists()"
Severity: #error
