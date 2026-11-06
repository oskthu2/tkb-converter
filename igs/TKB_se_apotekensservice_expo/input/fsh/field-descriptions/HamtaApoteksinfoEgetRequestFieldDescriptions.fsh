// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaApoteksinfoEgetRequestFieldDescriptions
* apoteksId ^definition = "GLN-kod för unik identifiering av apotek. Obligatorisk parameter om org-nr saknas som indata."
* apoteksId ^comment = "TKB-fält: `apoteksId` (`string`, kardinalitet 0..1)."
* orgNr ^definition = "Organisationsnummer. Obligatorisk parameter om Apoteks-id saknas som indata."
* orgNr ^comment = "TKB-fält: `orgNr` (`long`, kardinalitet 0..1)."
