// Elementen genereras ur UpdateBookingResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: UpdateBooking v1.0
// Genererad: 2026-09-26

Logical: UpdateBooking
Id: updatebooking
Title: "UpdateBooking — Begäran"
Description: """
  Logisk modell för begäran i UpdateBooking (urn:riv:supportprocess:personalresources:interpretation:UpdateBookingResponder:1, UpdateBookingType). Tolkförmedlingen uppdaterar beställningsinformation i Tolkportalen. Svaret beskrivs av InterpretationResult.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* BookingUpdate 1..1 string "BookingUpdate" "BookingUpdate"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateBookingFieldDescriptions
