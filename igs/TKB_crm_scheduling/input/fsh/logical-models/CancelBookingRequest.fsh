// Elementen genereras ur CancelBookingResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: CancelBooking v1.1 — Request
// Genererad: 2026-03-24

Logical: CancelBookingRequest
Id: cancelbooking-request
Title: "CancelBooking — Request"
Description: "Logisk modell för requestparametrar i CancelBooking."
Characteristics: #can-be-target

* ^version = "1.1"
* healthcare_facility 1..1 string "healthcare_facility" "healthcare_facility"
* bookingId 1..1 string "bookingId" "bookingId"
* message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CancelBookingRequestFieldDescriptions
