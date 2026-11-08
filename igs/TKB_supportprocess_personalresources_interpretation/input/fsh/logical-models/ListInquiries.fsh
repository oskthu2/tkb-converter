// Elementen genereras ur ListInquiriesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: ListInquiries v1.0
// Genererad: 2026-09-26

Logical: ListInquiries
Id: listinquiries
Title: "ListInquiries — Svar"
Description: """
  Logisk modell för svaret i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* Inquiries 0..* string "Inquiries" "Inquiries"
* LastSequenceNumber 1..1 string "LastSequenceNumber" "LastSequenceNumber"
* HasMoreEntries 1..1 boolean "HasMoreEntries" "HasMoreEntries"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListInquiriesFieldDescriptions
