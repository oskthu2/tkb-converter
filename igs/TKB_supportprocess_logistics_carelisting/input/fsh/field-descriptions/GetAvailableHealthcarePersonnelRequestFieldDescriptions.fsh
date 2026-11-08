// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableHealthcarePersonnelRequestFieldDescriptions
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* healthcareFacilityHSAId ^comment = "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1)."
* listingTypes ^definition = "Lista med listningstyper som konsument önskar filtrera på. Se listningstyper i referens [R3]"
* listingTypes ^comment = "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*)."
