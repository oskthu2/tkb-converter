// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCertificateRequestFieldDescriptions
* intygsId ^definition = "Unikt ID för det intyg som skall hämtas."
* intygsId ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.intygs-id

**Modellanteckning:** Unikt identifierare för det efterfrågade intyget."
* part ^definition = "Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intyget."
* part ^comment = "TKB-fält: `part` (`Part (se 7.2.9)`, kardinalitet 1..1).

**Mappning DIM:** Part.part

**Modellanteckning:** Kodat värde som anger vilken part i intygshanteringsprocessen som skickar begäran.
Styr vilka statusposter som returneras."
