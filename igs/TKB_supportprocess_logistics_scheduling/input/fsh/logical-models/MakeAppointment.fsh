// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: MakeAppointment v2.0
// Genererad: 2026-09-26

Logical: MakeAppointment
Id: makeappointment
Title: "MakeAppointment — Response"
Description: """
  Logisk modell för svaret i MakeAppointment
  (urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* appointmentId 0..1 string "appointmentId" "appointmentId"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
