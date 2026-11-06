// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: KontrolleraSamtyckeVardsystemFieldDescriptions
* avliden ^definition = "Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt."
* avliden ^comment = "TKB-fält: `avliden` (`boolean`, kardinalitet 1..1)."
* samtycke ^definition = "Anger om aktuell förskrivare har samtycke av patient. Möjliga värden är: 0 = Samtycke att läsa Läkemedelsförteckningen saknas 1= Samtycke att läsa Läkemedelsförteckningen finns 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats"
* samtycke ^comment = "TKB-fält: `samtycke` (`int`, kardinalitet 1..1)."
* samtyckesgivare ^definition = "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas."
* samtyckesgivare ^comment = "TKB-fält: `samtyckesgivare` (`string`, kardinalitet 1..1)."
* statusdatum ^definition = "Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas."
* statusdatum ^comment = "TKB-fält: `statusdatum` (`dateTime`, kardinalitet 0..1)."
