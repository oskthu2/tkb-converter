// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: CreateBooking v1.0
// Genererad: 2026-09-26

Logical: CreateBookingResponse
Id: createbooking-response
Title: "CreateBooking — Svar"
Description: """
  Logisk modell för svaret i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingResponseType).
"""
Characteristics: #can-be-target
* referenceNumberMap 1..* BackboneElement "Referensnummermappning" "Mappning mellan Tolkportalens beställningsnummer och tolkförmedlingens referensnummer (ReferenceNumberMapping)."
  * bookingNumber 1..1 integer "Beställningsnummer" "Tolkportalens beställningsnummer (≥ 0)."
  * referenceNumber 1..1 string "Referensnummer" "Tolkförmedlingens referensnummer."
* result 1..1 InterpretationResult "Resultat" "Information om anropets resultat (ResultType)."
