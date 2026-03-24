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

* bookingId 0..1 string "Id för skapad bokning"
    """
    Id för skapad bokning. Ska anges vid genomförd bokning (resultCode OK eller INFO), annars inte (ERROR).
    Kardinalitet: Valfri (villkorlig).
    """
* resultCode 1..1 string "Status för den gjorda bokningen"
    """
    ResultCodeEnum: Status för den gjorda bokningen.
    Möjliga värden: OK, INFO, ERROR.
    Kardinalitet: Obligatorisk.
    """
* resultText 0..1 string "Ev. meddelande kopplat till resultatkoden"
    """
    Fritext meddelande kopplat till resultatkoden.
    Kardinalitet: Valfri.
    """
