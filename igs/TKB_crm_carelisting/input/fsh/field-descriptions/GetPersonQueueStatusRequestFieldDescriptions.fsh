// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonQueueStatusRequestFieldDescriptions
* personId ^definition = "PersonID för den person vars köstatus önskas."
* personId ^comment = "TKB-fält: `personId` (`string (SubjectOfCareIdType)`, kardinalitet 1..1).

**Modellanteckning:** Identitetsbeteckning för vård- och omsorgstagaren vars köstatus efterfrågas.
Pattern: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}"
