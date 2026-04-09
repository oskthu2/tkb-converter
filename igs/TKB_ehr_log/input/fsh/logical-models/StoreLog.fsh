// Genererad från TKB ehr:log v1.2.3
// Kontrakt: StoreLog v1.0
// Namnrymd: urn:riv:ehr:log:store:StoreLogResponder:1
// Genererad: 2026-04-09

Logical: StoreLog
Id: storelog
Title: "StoreLog"
Description: """
  Logisk modell för tjänstekontraktet StoreLog
  (RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1).
  Representerar responsens informationsstruktur (log.store:Result).
  Tjänsten sparar en eller flera loggposter i loggtjänsten för att möjliggöra
  uppföljning enligt PDL.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod för lagringen"
    """
    Statuskod som anger om loggposter sparats korrekt eller om fel uppstått.
    Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED.
    Kardinalitet: Obligatorisk.
    """
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "Beskrivande text till resultatkoden"
    """
    Fritext som beskriver resultatet eller felorsaken.
    Kardinalitet: Valfri.
    """
