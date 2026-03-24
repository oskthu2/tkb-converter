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

* resultCode 1..1 string "Status för den gjorda avbokningen"
    """
    ResultCodeEnum: Status för den gjorda avbokningen.
    Möjliga värden: OK, INFO, ERROR.
    Kardinalitet: Obligatorisk.
    """
* resultText 0..1 string "Ev. meddelande kopplat till resultatkoden"
    """
    Fritext meddelande kopplat till resultatkoden.
    Kardinalitet: Valfri.
    """
