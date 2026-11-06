// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegistreraHkdbTransaktionFieldDescriptions
* fpBalans ^definition = "Nya ackumulerade brutto/netto belopp i kronor och ören för föregånde period."
* fpBalans ^comment = "TKB-fält: `fpBalans` (`BalansResponse`, kardinalitet 0..1)."
* fpBalans.brutto ^definition = "Bruttobelopp i kronor och ören"
* fpBalans.brutto ^comment = "TKB-fält: `../brutto` (`double`, kardinalitet 1..1)."
* fpBalans.netto ^definition = "Nettobelopp i kronor och ören"
* fpBalans.netto ^comment = "TKB-fält: `../netto` (`double`, kardinalitet 1..1)."
* ipBalans ^definition = "Nya ackumulerade brutto/netto belopp i kronor och ören för innevarande period."
* ipBalans ^comment = "TKB-fält: `ipBalans` (`BalansResponse`, kardinalitet 0..1)."
* ipBalans.brutto ^definition = "Bruttobelopp i kronor och ören"
* ipBalans.brutto ^comment = "TKB-fält: `../brutto` (`double`, kardinalitet 1..1)."
* ipBalans.netto ^definition = "Nettobelopp i kronor och ören"
* ipBalans.netto ^comment = "TKB-fält: `../netto` (`double`, kardinalitet 1..1)."
* kpBalans ^definition = "Nya ackumulerade brutto/netto belopp i kronor och ören för kommande period."
* kpBalans ^comment = "TKB-fält: `kpBalans` (`BalansResponse`, kardinalitet 0..1)."
* kpBalans.brutto ^definition = "Bruttobelopp i kronor och ören"
* kpBalans.brutto ^comment = "TKB-fält: `../brutto` (`double`, kardinalitet 1..1)."
* kpBalans.netto ^definition = "Nettobelopp i kronor och ören"
* kpBalans.netto ^comment = "TKB-fält: `../netto` (`double`, kardinalitet 1..1)."
* resultat ^definition = "Resultat av högkostnadsuppdatering. 1 - Transaktionen accepterad och registrerad."
* resultat ^comment = "TKB-fält: `resultat` (`int`, kardinalitet 1..1)."
