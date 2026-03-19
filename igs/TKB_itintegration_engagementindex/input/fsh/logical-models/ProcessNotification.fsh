// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: ProcessNotification v1.0
// Genererad: 2026-03-19

Logical: ProcessNotification
Id: processnotification
Title: "ProcessNotification"
Description: """
  Logisk modell för tjänstekontraktet ProcessNotification
  (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).
  Representerar responsens informationsstruktur — ett statusbesked
  på att notifieringen mottagits och behandlats.

  OBS: ProcessNotification har en ovanlig dubbel roll i arkitekturen:
  - Engagemangsindex agerar PRODUCENT för att TA EMOT notifieringar från andra index.
  - Engagemangsindex agerar KONSUMENT för att SKICKA notifieringar till andra index.
  Fr.o.m. version 1.0.9 agerar nationellt engagemangsindex ENBART som producent
  (tar emot notifieringar från lokala index). Nationellt EI skickar inte längre
  ProcessNotification till lokala index eller verksamhetssystem.
  Undantag: Formulärtjänsten och Tidbokning/Kallelser har tidsbegränsat undantag.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
    """
    Statuskod som anger utfallet av notifieringsoperationen.
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
