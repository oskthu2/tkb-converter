// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteMessagesFieldDescriptions
* result ^comment = "TKB-fält: `result` (kardinalitet 1..1).

**Modellanteckning:** Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är \"INFO\" eller ERROR kan information skickas i errorId och/eller errorMessage."
* result.resultCode ^definition = "Information om anropet gick bra(OK, ERROR, INFO)"
* result.resultCode ^comment = "TKB-fält: `result.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** resultCode Heter code i schemat."
* result.errorId ^definition = "Enda möjliga är:

1=INTERNAL, 2=UNREAD_DELETE"
* result.errorId ^comment = "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1)."
* result.errorMessage ^definition = "Text som ytterliggare beskriver felet"
* result.errorMessage ^comment = "TKB-fält: `result.errorMessage` (`string`, kardinalitet 0..1)."
* deletedIds ^definition = "Meddelandeidentitet"
* deletedIds ^comment = "TKB-fält: `deletedIds` (`long`, kardinalitet 0..n).

**Modellanteckning:** deletedIds (xs:long i schemat.)"
