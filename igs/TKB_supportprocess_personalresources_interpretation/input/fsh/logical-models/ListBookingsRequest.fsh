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
* lastSequenceNumber 1..1 unsignedInt "Senaste meddelandenummer" "Referens till det senaste mottagna meddelandet, så att bara nya poster hämtas. XSD-typen är unsignedLong; FHIR saknar motsvarande typ."
