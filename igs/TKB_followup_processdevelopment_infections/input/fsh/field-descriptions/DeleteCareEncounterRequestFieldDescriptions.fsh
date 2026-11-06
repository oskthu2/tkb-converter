// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteCareEncounterRequestFieldDescriptions
* careEncounterId ^definition = "careEncounterId för den vårdkontakt med tillhörande information som ska raderas. Root := Nationell OID för lokala id:n. Ext:= HSA-id för det system inom vilket vårdkontakt-id är unikt + \":\" + vårdkontakt-id."
* careEncounterId ^comment = "TKB-fält: `careEncounterId` (`IIType`, kardinalitet 1..1)."
