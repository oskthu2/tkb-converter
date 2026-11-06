// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonContactInformationRequestFieldDescriptions
* personId ^definition = "Id på personen vars kontaktuppgifter efterfrågas"
* personId ^comment = "TKB-fält: `personId` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1).

**Modellanteckning:** En universellt unik identifierare."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
