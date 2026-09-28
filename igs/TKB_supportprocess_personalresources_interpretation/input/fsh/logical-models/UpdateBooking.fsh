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
* bookingUpdate 1..1 BackboneElement "Uppdatering av beställning" "Uppdatering av beställning (BookingUpdate)."
  * bookingNumber 1..1 integer "Beställningsnummer" "Tolkportalens beställningsnummer (≥ 0)."
  * referenceNumber 0..1 string "Referensnummer" "Tolkförmedlingens referensnummer."
  * bookingInformationFromAssociation 1..1 BackboneElement "Information från tolkförmedlingen" "Information från tolkförmedlingen om tolkningen (BookingInformationFromAssociation)."
    * authorizationLevel 1..1 CodeableConcept "Kompetensnivå" "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac."
    * requestTravelTimeCost 1..1 boolean "Begär restidsersättning" "Anger om tolkförmedlingen efterfrågar restidsersättning för uppdraget."
    * interpreterName 1..1 string "Tolkens namn" "Tolkens namn (minst ett tecken)."
    * phoneNumberForInterpretation 0..1 string "Telefonnummer för distanstolkning" "Telefonnummer som distanstolkning ska utföras på."
