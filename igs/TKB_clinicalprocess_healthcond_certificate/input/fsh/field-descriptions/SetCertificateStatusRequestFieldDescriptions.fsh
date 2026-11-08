// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SetCertificateStatusRequestFieldDescriptions
* intygs-id ^definition = "Unikt ID för det intyg som status skall sättas för."
* intygs-id ^comment = "TKB-fält: `intygs-id` (`IntygId (se 7.2.6)`, kardinalitet 1..1).

**Mappning DIM:** Intyg.intygs-id"
* part ^definition = "Kodat värde som anger den part i intygshanteringsprocessen som statusen gäller för."
* part ^comment = "TKB-fält: `part` (`Part (se 7.2.9)`, kardinalitet 1..1).

**Mappning DIM:** Part.part"
* status ^definition = "Kodat värde som anger status för ett intyg."
* status ^comment = "TKB-fält: `status` (`Statuskod (se 7.2.15)`, kardinalitet 1..1).

**Mappning DIM:** Status.status"
* tidpunkt ^definition = "Tidpunkt då statusen sattes."
* tidpunkt ^comment = "TKB-fält: `tidpunkt` (`TimeStampType`, kardinalitet 1..1).

**Mappning DIM:** Status.tidpunkt"
