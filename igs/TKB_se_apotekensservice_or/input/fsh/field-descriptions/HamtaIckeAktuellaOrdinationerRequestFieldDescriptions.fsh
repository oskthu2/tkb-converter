// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaIckeAktuellaOrdinationerRequestFieldDescriptions
* fromDatum ^definition = "Från och med datum för perioden som ska visas."
* fromDatum ^comment = "TKB-fält: `fromDatum` (`dateTime`, kardinalitet 0..1)."
* personnummer ^definition = "Giltigt personnummer för patient."
* personnummer ^comment = "TKB-fält: `personnummer` (`PersonnummerType`, kardinalitet 1..1)."
* ordinationsId ^definition = "OrdinationsId. Anges om bara en ordination ska returneras."
* ordinationsId ^comment = "TKB-fält: `ordinationsId` (`OrdinationsIdType`, kardinalitet 0..1)."
* grupplegitimationskod ^definition = "Användarens 6-ställiga grupplegitimationskod. Obligatorisk för Apotekselev, receptarieelev, Teknikerelev och Europeisk farmaceut."
* grupplegitimationskod ^comment = "TKB-fält: `grupplegitimationskod` (`LegitimationskodType`, kardinalitet 0..1)."
* gruppforskrivarkod ^definition = "Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten."
* gruppforskrivarkod ^comment = "TKB-fält: `gruppforskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1)."
