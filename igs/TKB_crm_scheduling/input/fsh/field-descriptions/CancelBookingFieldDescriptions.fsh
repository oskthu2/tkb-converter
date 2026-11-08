// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelBookingFieldDescriptions
* resultCode ^definition = "Status för den gjorda avbokningen."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum (string)`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO."
* resultText ^definition = "Ev. meddelande kopplat till resultatkoden."
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
