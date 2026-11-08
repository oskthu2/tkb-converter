// Elementen genereras ur ListBookingsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: ListBookings v1.0
// Genererad: 2026-09-26

Logical: ListBookingsRequest
Id: listbookings-request
Title: "ListBookings — Begäran"
Description: """
  Logisk modell för begäran i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* LastSequenceNumber 1..1 string "LastSequenceNumber" "LastSequenceNumber"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListBookingsRequestFieldDescriptions
