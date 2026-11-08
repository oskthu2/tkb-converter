// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: StoreLogFieldDescriptions
* result ^definition = "Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATION_ERROR och ACCESSDENIED."
* result ^comment = "TKB-fält: `result` (`urn:riv:informationsecurity:auditing:log:2:ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
