// Elementen genereras ur MakeBookingResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: MakeBooking v1.1
// Genererad: 2026-03-24

Logical: MakeBooking
Id: makebooking
Title: "MakeBooking"
Description: """
  Logisk modell för tjänstekontraktet MakeBooking
  (RIV-TA urn:riv:crm:scheduling:MakeBooking:1).
  Representerar responsens informationsstruktur.
  Tjänst för nybokning vid en vårdenhet.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* bookingId 0..1 string "bookingId" "bookingId"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert MakeBookingFieldDescriptions
