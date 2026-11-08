// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeletePrescriptionReasonResponseFieldDescriptions
* ResultCode ^definition = "OK = operationen genomförd utan fel

ERROR = Fel vid operationen

INFO = Information finns om operationen"
* ResultCode ^comment = "TKB-fält: `code` (`String`, kardinalitet 1..1)."
* comment ^definition = "Beskrivning av fel som uppstått alternativt information om genomförd operation."
* comment ^comment = "TKB-fält: `comment` (`String`, kardinalitet 0..1)."
