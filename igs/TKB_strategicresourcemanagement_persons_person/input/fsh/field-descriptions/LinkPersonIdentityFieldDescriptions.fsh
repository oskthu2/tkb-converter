// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: LinkPersonIdentityFieldDescriptions
* result ^definition = "Result status för hur tjänsten utfördes. För felkoder, se datatyp resultType"
* result ^comment = "TKB-fält: `result` (`urn:riv:strategicresourcemanagement:persons:person:5:ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
