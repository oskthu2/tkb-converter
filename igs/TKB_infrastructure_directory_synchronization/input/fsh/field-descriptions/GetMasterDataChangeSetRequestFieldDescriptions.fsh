// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMasterDataChangeSetRequestFieldDescriptions
* masterDataEntity ^definition = "Masterdataentitet

Angivelse av vilken typ masterdata som begäran avser."
* masterDataEntity ^comment = "TKB-fält: `masterDataEntity` (`CVType`, kardinalitet 1)."
* masterDataEntity.cvCode ^definition = "Kod som anger typ av masterdata i källan.

Definierar vilken typ av information i masterdatakällan som efterfrågas med hjälp av kod i kodsystem."
* masterDataEntity.cvCode ^comment = "TKB-fält: `../code` (`String`, kardinalitet 1).

**Modellanteckning:** cvCode Heter code i schemat."
* masterDataEntity.codeSystem ^definition = "Kodsystem som anger masterdatakälla.

OID för t.ex. utbud"
* masterDataEntity.codeSystem ^comment = "TKB-fält: `../codeSystem` (`String`, kardinalitet 1)."
* masterDataEntity.codeSystemName ^definition = "Namn på kodsystem"
* masterDataEntity.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`String`, kardinalitet 0..1)."
* masterDataEntity.codeSystemVersion ^definition = "Versionsnummer för kodsystem"
* masterDataEntity.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`String`, kardinalitet 0..1)."
* masterDataEntity.displayName ^definition = "Textuell beskrivning av det som koden anger.

Koden beskriven i fritext."
* masterDataEntity.displayName ^comment = "TKB-fält: `../displayName` (`String`, kardinalitet 0..1)."
* masterDataEntity.originalText ^definition = "Skall ej anges"
* masterDataEntity.originalText ^comment = "TKB-fält: `../originalText` (`String`, kardinalitet 0..0)."
* category ^definition = "Kategori

Kategorisering av förändring. Enum med tillåtna värden: create, update, delete."
* category ^comment = "TKB-fält: `category` (`Enum`, kardinalitet 0..*).

Obs: modellen anger 0..1 där TKB:n anger 0..*."
* timePeriod ^definition = "Tidsintervall för förändringar.

Begränsning av sökning i tid. Resultatet innehåller information om poster som förändrats i masterdatakällan under angiven tidsperiod. Minst en av start- och endattributen ska anges om attributet timeInterval anges."
* timePeriod ^comment = "TKB-fält: `timePeriod` (`TimePeriodType`, kardinalitet 0..1).

**Modellanteckning:** Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss"
* timePeriod.start ^definition = "Starttid

Starttid för när en post förändrats. Endast katalogposter som förändrats efter denna tidpunkt ska tas med i svaret."
* timePeriod.start ^comment = "TKB-fält: `../start` (`TimeStamp`, kardinalitet 0..1)."
* timePeriod.end ^definition = "Sluttid

Slut för när en post förändrats. Endast katalogposter som förändrats före denna tidpunkt ska tas med i svaret."
* timePeriod.end ^comment = "TKB-fält: `../end` (`TimeStamp`, kardinalitet 0..1)."
