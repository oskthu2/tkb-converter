// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterTemporaryExtendedRevokeFieldDescriptions
* result ^definition = "Status för om operationen lyckades eller inte."
* result ^comment = "TKB-fält: `result` (`urn:riv:informationsecurity:authorization:blocking:4:ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
