// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingTypesRequestFieldDescriptions
* personId ^definition = "PersonID för den person vars möjliga listningstyper önskas."
* personId ^comment = "TKB-fält: `personId` (`string (SubjectOfCareIdType)`, kardinalitet 1..1).

**Modellanteckning:** Anger person ID som det önskas möjliga typer av listningar för.
Pattern: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}"
