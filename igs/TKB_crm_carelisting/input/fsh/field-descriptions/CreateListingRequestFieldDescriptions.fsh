// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateListingRequestFieldDescriptions
* personId ^definition = "Personnummer för den person som önskar göra ett tjänsteval."
* personId ^comment = "TKB-fält: `personId` (`string (SubjectOfCareIdType)`, kardinalitet 1..1)."
* listingType ^definition = "Typ av listning som önskas, t.ex. BVC."
* listingType ^comment = "TKB-fält: `listingType` (`string (ListingType)`, kardinalitet 1..1)."
* healthcare_facility ^definition = "HSA-ID för den vårdenhet som personen önskar lista sig på."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`string (HsaIdType)`, kardinalitet 1..1)."
* healthcare_professional ^definition = "HSA-ID för specifik resurs (läkare/husläkarteam) att lista sig på."
* healthcare_professional ^comment = "TKB-fält: `healthcare_professional` (`string (HsaIdType)`, kardinalitet 0..1)."
* addToQueue ^definition = "Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen."
* addToQueue ^comment = "TKB-fält: `addToQueue` (`boolean`, kardinalitet 1..1)."
