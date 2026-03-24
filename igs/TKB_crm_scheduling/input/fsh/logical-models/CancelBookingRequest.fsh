// Genererad från TKB crm:scheduling v1.1
// Kontrakt: CancelBooking v1.1 — Request
// Genererad: 2026-03-24

Logical: CancelBookingRequest
Id: cancelbooking-request
Title: "CancelBooking — Request"
Description: "Logisk modell för requestparametrar i CancelBooking."
Characteristics: #can-be-target

* healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
    """
    HSA-id för mottagning/vårdenhet.
    Kardinalitet: Obligatorisk.
    """
* bookingId 1..1 string "Intern bokningsidentitet"
    """
    Intern bokningsidentitet för bokningen som ska avbokas.
    Kardinalitet: Obligatorisk.
    """
* message 0..1 string "Invånarens beskrivning av orsak för avbokning"
    """
    Invånarens beskrivning av orsak för avbokning.
    Fältet kan bara skickas om värdet på message_allowed är 'true' i svaret från GetBookingDetails.
    Kardinalitet: Valfri.
    """
