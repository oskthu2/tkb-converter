// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SendMedicalCertificateFieldDescriptions
* result ^comment = "TKB-fält: `result` (kardinalitet 1..1)."
* result.resultCode ^definition = "Information om anropet gick bra(OK, ERROR, INFO)"
* result.resultCode ^comment = "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1)."
* result.infoText ^definition = "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text."
* result.infoText ^comment = "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1)."
* result.errorId ^definition = "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)"
* result.errorId ^comment = "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1)."
* result.errorText ^definition = "Text som ytterliggare beskriver felet"
* result.errorText ^comment = "TKB-fält: `result.errorText` (`string`, kardinalitet 0..1)."
