// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateListingFieldDescriptions
* success ^definition = "True om listningen genomfördes framgångsrikt, annars false. False indikerar att användaren behöver prova ett annat alternativ."
* success ^comment = "TKB-fält: `success` (`boolean`, kardinalitet 1..1).

**Modellanteckning:** True if the requested listing was successfully completed, else false.
False indicates that the user needs to try another option for listing."
* comment ^definition = "Information som kompletterar angiven status."
* comment ^comment = "TKB-fält: `comment` (`string`, kardinalitet 0..1)."
* systemCode ^definition = "Kod från underliggande listningssystem för felsökningsändamål. Konsumenten får inte binda logik till dessa koder."
* systemCode ^comment = "TKB-fält: `systemCode` (`string`, kardinalitet 0..1).

**Modellanteckning:** Kod från underliggande listningssystem, i syfte att användas i dialog
med respektive listningssystems förvaltning.
Tjänstekonsumenten får inte binda logik till värden på dessa koder."
