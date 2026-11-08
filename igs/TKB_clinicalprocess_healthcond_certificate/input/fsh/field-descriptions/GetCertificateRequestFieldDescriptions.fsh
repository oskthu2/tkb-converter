// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCertificateRequestFieldDescriptions
* intygs-id ^definition = "Unikt ID för det intyg som skall hämtas."
* intygs-id ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.intygs-id"
* part ^definition = "Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intyget."
* part ^comment = "TKB-fält: `part` (`Part (se 7.2.9)`, kardinalitet 1..1).

**Mappning DIM:** Part.part"
