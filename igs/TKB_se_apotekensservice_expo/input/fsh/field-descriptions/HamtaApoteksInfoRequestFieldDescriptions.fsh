// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaApoteksInfoRequestFieldDescriptions
* glnKod ^definition = "Lista med en eller flera GLN-koder som identifierar de expeditionsställen man vill ha information om. GLN-koderna i listan ska vara unika."
* glnKod ^comment = "TKB-fält: `glnKod` (`string`, kardinalitet 1..*)."
* tidpunkt ^definition = "Om givet så returneras information som gällde vid tidpunkten, annars aktuell information."
* tidpunkt ^comment = "TKB-fält: `tidpunkt` (`dateTime`, kardinalitet 0..1)."
