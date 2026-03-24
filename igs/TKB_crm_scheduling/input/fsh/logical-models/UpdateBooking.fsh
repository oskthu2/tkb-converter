// Genererad från TKB crm:scheduling v1.1
// Kontrakt: UpdateBooking v1.1
// Genererad: 2026-03-24

Logical: UpdateBooking
Id: updatebooking
Title: "UpdateBooking"
Description: """
  Logisk modell för tjänstekontraktet UpdateBooking
  (RIV-TA urn:riv:crm:scheduling:UpdateBooking:1).
  Representerar responsens informationsstruktur.
  Tjänst för att uppdatera en bokning med nytt datum och tid (ombokning).
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Status för den gjorda ombokningen"
    """
    ResultCodeEnum: Status för den gjorda ombokningen.
    Möjliga värden: OK, INFO, ERROR.
    Kardinalitet: Obligatorisk.
    """
* resultText 0..1 string "Ev. meddelande kopplat till resultatkoden"
    """
    Fritext meddelande kopplat till resultatkoden.
    Kardinalitet: Valfri.
    """
