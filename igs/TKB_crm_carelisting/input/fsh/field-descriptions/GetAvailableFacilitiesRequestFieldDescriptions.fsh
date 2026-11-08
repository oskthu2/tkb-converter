// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableFacilitiesRequestFieldDescriptions
* countyCode ^definition = "Länskod (SCB-kod) för regionen vars tillgängliga vårdenheter söks."
* countyCode ^comment = "TKB-fält: `countyCode` (`string (CountyCode)`, kardinalitet 1..1)."
* healthcare_facilities ^definition = "Lista med HSA-ID:n för specifika vårdenheter att hämta information om. Tom lista = hämta alla."
* healthcare_facilities ^comment = "TKB-fält: `healthcare_facilities` (`string (HsaIdType)`, kardinalitet 0..*).

**Modellanteckning:** Lista med Vårdenheter som man önskar information om eller tom sträng \"\" om information om alla tillgängliga vårdenehter ska hämtas."
* listingType ^definition = "Anger vilka typer av vårdenheter som skall sökas fram. Om inget anges hämtas alla."
* listingType ^comment = "TKB-fält: `listingType` (`string (ListingType)`, kardinalitet 0..*)."
