// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMasterDataChangeSetRequestFieldDescriptions
* masterDataEntity ^definition = "Masterdataentitet

Angivelse av vilken typ masterdata som begäran avser."
* masterDataEntity ^comment = "TKB-fält: `masterDataEntity` (`CVType`, kardinalitet 1)."
* category ^definition = "Kategori

Kategorisering av förändring. Enum med tillåtna värden: create, update, delete."
* category ^comment = "TKB-fält: `category` (`Enum`, kardinalitet 0..*).

Obs: modellen anger 0..1 där TKB:n anger 0..*."
* timePeriod ^definition = "Tidsintervall för förändringar.

Begränsning av sökning i tid. Resultatet innehåller information om poster som förändrats i masterdatakällan under angiven tidsperiod. Minst en av start- och endattributen ska anges om attributet timeInterval anges."
* timePeriod ^comment = "TKB-fält: `timePeriod` (`TimePeriodType`, kardinalitet 0..1)."
