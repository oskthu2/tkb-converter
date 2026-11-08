// Elementen genereras ur CancelBookingResponder_1.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB crm:scheduling v1.1
// Kontrakt: CancelBooking v1.1
// Genererad: 2026-03-24

Logical: CancelBooking
Id: cancelbooking
Title: "CancelBooking"
Description: """
  Logisk modell för tjänstekontraktet CancelBooking
  (RIV-TA urn:riv:crm:scheduling:CancelBooking:1).
  Representerar responsens informationsstruktur.
  Tjänst för att avboka en bokning vid en vårdenhet.
"""
Characteristics: #can-be-target

* ^version = "1.1"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CancelBookingFieldDescriptions
