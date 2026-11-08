// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessNotificationFieldDescriptions
* ResultCode ^definition = "Status enligt generell regel."
* ResultCode ^comment = "TKB-fält: `ResultCode` (`Kodverk`, kardinalitet 1..1).

**Modellanteckning:** ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment ^definition = "Meddelande enligt generell regel"
* comment ^comment = "TKB-fält: `comment` (`String`, kardinalitet 0..1)."
