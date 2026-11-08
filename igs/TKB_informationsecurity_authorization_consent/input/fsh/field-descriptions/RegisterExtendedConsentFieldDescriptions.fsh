// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterExtendedConsentFieldDescriptions
* result ^definition = "Status för om tjänsten utfördes."
* result ^comment = "TKB-fält: `result` (`urn:riv:informationsecurity:authorization:consent:2:ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
