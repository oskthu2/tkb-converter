// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: Update v1.0
// Genererad: 2026-03-19

Logical: Update
Id: update
Title: "Update"
Description: """
  Logisk modell för tjänstekontraktet Update
  (RIV-TA urn:riv:itintegration:engagementindex:Update:1).
  Representerar responsens informationsstruktur — ett statusbesked
  som anger om uppdateringsoperationen lyckades eller misslyckades.

  Kontraktet används av källsystem för att skapa, uppdatera och radera
  indexposter i ett engagemangsindex.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
    """
    Statuskod som anger utfallet av uppdateringsoperationen.
    Tillåtna värden:
      OK    — Transaktionen har utförts enligt uppdraget.
      INFO  — Transaktionen har utförts men det finns ett informationsmeddelande.
      ERROR — Transaktionen har INTE kunnat utföras p.g.a. logiskt fel.
    Kardinalitet: Obligatorisk.
    """

* comment 0..1 string "Kommentar"
    """
    Fritext-meddelande med ytterligare information om resultatet.
    Används framförallt vid INFO och ERROR för att ge konsumenten
    mer detaljerad information om vad som hänt.
    Kardinalitet: Valfri.
    """
