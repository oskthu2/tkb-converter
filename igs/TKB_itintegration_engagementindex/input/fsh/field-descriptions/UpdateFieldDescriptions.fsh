// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UpdateFieldDescriptions
* resultCode ^definition = "Status enligt generell regel."
* resultCode ^comment = "TKB-fält: `ResultCode` (`Kodverk`, kardinalitet 1..1).

**Modellanteckning:** Statuskod som anger utfallet av uppdateringsoperationen.
Tillåtna värden:
OK    — Transaktionen har utförts enligt uppdraget.
INFO  — Transaktionen har utförts men det finns ett informationsmeddelande.
ERROR — Transaktionen har INTE kunnat utföras p.g.a. logiskt fel."
* comment ^definition = "Meddelande enligt generell regel"
* comment ^comment = "TKB-fält: `comment` (`String`, kardinalitet 0..1).

**Modellanteckning:** Fritext-meddelande med ytterligare information om resultatet.
Används framförallt vid INFO och ERROR för att ge konsumenten
mer detaljerad information om vad som hänt."
