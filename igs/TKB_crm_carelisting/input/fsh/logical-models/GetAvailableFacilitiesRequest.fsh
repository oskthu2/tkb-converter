// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetAvailableFacilities v1.0 — Request
// Namespace: urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1
// Genererad: 2026-03-24

Logical: GetAvailableFacilitiesRequest
Id: getavailablefacilities-request
Title: "GetAvailableFacilities — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare).
  (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).
"""
Characteristics: #can-be-target

* countyCode 1..1 string "Länskod (SCB-kod) för regionen"
    """
    SCB-kod för det län/den region vars tillgängliga vårdenheter söks.
    Kardinalitet: Obligatorisk.
    """
* healthcareFacilities 0..* Identifier "HSA-ID:n för specifika vårdenheter"
    """
    Lista med HSA-ID:n för specifika vårdenheter att hämta information om.
    Tom lista innebär att information om alla tillgängliga vårdenheter ska hämtas.
    Kardinalitet: Valfri, lista.
    """
* listingType 0..* string "Typer av vårdenheter att söka fram"
    """
    Anger vilka typer av vårdenheter som skall sökas fram.
    Om inget anges hämtas alla.
    Kardinalitet: Valfri, lista.
    """
