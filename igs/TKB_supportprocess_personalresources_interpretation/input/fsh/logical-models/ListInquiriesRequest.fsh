// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: ListInquiries v1.0
// Genererad: 2026-09-26

Logical: ListInquiriesRequest
Id: listinquiries-request
Title: "ListInquiries — Begäran"
Description: """
  Logisk modell för begäran i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesType).
"""
Characteristics: #can-be-target
* lastSequenceNumber 1..1 unsignedInt "Senaste meddelandenummer" "Referens till det senaste mottagna meddelandet, så att bara nya poster hämtas. XSD-typen är unsignedLong; FHIR saknar motsvarande typ."
