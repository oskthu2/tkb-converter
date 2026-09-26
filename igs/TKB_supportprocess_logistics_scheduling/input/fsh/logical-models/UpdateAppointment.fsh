// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: UpdateAppointment v2.0
// Genererad: 2026-09-26

Logical: UpdateAppointment
Id: updateappointment
Title: "UpdateAppointment — Response"
Description: """
  Logisk modell för svaret i UpdateAppointment
  (urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentResponseType).
"""
Characteristics: #can-be-target
* appointmentId 0..1 string "appointmentId" "appointmentId"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
