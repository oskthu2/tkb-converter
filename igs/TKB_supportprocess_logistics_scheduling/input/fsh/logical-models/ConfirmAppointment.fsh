// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: ConfirmAppointment v1.0
// Genererad: 2026-09-26

Logical: ConfirmAppointment
Id: confirmappointment
Title: "ConfirmAppointment — Response"
Description: """
  Logisk modell för svaret i ConfirmAppointment
  (urn:riv:supportprocess:logistics:scheduling:ConfirmAppointmentResponder:1, ConfirmAppointmentResponseType).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
