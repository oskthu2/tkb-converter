// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableFacilitiesFieldDescriptions
* healthcare_facilities ^definition = "Lista med tillgängliga vårdenheter."
* healthcare_facilities ^comment = "TKB-fält: `healthcare_facilities` (`Facility`, kardinalitet 1..*)."
* healthcare_facilities.facilityId ^definition = "HSA-ID för vårdenheten."
* healthcare_facilities.facilityId ^comment = "TKB-fält: `healthcare_facilities.facilityId` (`string (HsaIdType)`, kardinalitet 1..1)."
* healthcare_facilities.hasQueue ^definition = "Indikerar om vårdenheten har kö vid listningar."
* healthcare_facilities.hasQueue ^comment = "TKB-fält: `healthcare_facilities.hasQueue` (`boolean`, kardinalitet 0..1)."
* healthcare_facilities.supportedListingTypes ^definition = "Lista med listningstyper som vårdenheten stödjer."
* healthcare_facilities.supportedListingTypes ^comment = "TKB-fält: `healthcare_facilities.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*).

**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* healthcare_facilities.facilityName ^definition = "Namn på vårdenheten."
* healthcare_facilities.facilityName ^comment = "TKB-fält: `healthcare_facilities.facilityName` (`string`, kardinalitet 1..1)."
