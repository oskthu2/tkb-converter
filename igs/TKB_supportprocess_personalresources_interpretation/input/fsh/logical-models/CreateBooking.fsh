// Elementen genereras ur CreateBookingResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: CreateBooking v1.0
// Genererad: 2026-09-26

Logical: CreateBooking
Id: createbooking
Title: "CreateBooking — Begäran"
Description: """
  Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* BookingCreate 1..1 string "BookingCreate" "BookingCreate"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CreateBookingFieldDescriptions
