// Genererad från TKB ehr:commission v1.0 RC1
// Kontrakt: SetSelectedCommissionForPerson v1.0
// Genererad: 2026-04-09

Logical: SetSelectedCommissionForPerson
Id: setselectedcommissionforperson
Title: "SetSelectedCommissionForPerson"
Description: """
  Logisk modell för tjänstekontraktet SetSelectedCommissionForPerson
  (RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1).
  Representerar responsens informationsstruktur (Result).

  Tjänsten sätter vilket medarbetaruppdrag som valdes aktivt av en person.
  Valet är aktuellt under nästkommande 12 timmar.
  Möjlighet finns att nollställa valet genom att utelämna commissionHsaId.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Svarskod för åtgärden"
    """
    Anger svarskod för åtgärden enligt ResultCode-kodverket.
    Kardinalitet: Obligatorisk.
    """
* resultCode from ResultCodeVS (required)
* resultText 1..1 string "Felmeddelande (tomt vid OK)"
    """
    Optionellt felmeddelande som innehåller information om felet som uppstod.
    Fältet är tomt om resultatkoden är OK.
    Kardinalitet: Obligatorisk (men innehållet kan vara tomt sträng).
    """
