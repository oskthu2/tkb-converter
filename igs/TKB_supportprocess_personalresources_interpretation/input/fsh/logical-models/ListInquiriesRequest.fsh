// Elementen genereras ur ListInquiriesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* LastSequenceNumber 1..1 string "LastSequenceNumber" "LastSequenceNumber"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListInquiriesRequestFieldDescriptions
