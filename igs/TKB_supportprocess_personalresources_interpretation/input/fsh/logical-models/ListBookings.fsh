// Elementen genereras ur ListBookingsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: ListBookings v1.0
// Genererad: 2026-09-26

Logical: ListBookings
Id: listbookings
Title: "ListBookings — Svar"
Description: """
  Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* Bookings 0..* string "Bookings" "Bookings"
* LastSequenceNumber 1..1 string "LastSequenceNumber" "LastSequenceNumber"
* HasMoreEntries 1..1 boolean "HasMoreEntries" "HasMoreEntries"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListBookingsFieldDescriptions
