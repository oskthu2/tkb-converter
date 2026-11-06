// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableFacilitiesFieldDescriptions
* healthcareFacilities ^definition = "Lista med tillgängliga vårdenheter."
* healthcareFacilities ^comment = "TKB-fält: `healthcare_facilities` (`Facility`, kardinalitet 1..*)."
* healthcareFacilities.facilityId ^definition = "HSA-ID för vårdenheten."
* healthcareFacilities.facilityId ^comment = "TKB-fält: `healthcare_facilities.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).

**Modellanteckning:** HSA-ID eller alternativt Orgnr+lokalt id för vårdenheten.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id)."
* healthcareFacilities.facilityName ^definition = "Namn på vårdenheten."
* healthcareFacilities.facilityName ^comment = "TKB-fält: `healthcare_facilities.facilityName` (`string`, kardinalitet 1..1).

**Modellanteckning:** Enhetens officiella namn."
* healthcareFacilities.hasQueue ^definition = "Indikerar om vårdenheten har kö vid listningar."
* healthcareFacilities.hasQueue ^comment = "TKB-fält: `healthcare_facilities.hasQueue` (`boolean`, kardinalitet 0..1).

**Modellanteckning:** Boolskt värde som indikerar om vårdenheten har kö vid listningar.
Kan utelämnas om information saknas eller inte behövs i kontexten."
* healthcareFacilities.supportedListingTypes ^definition = "Lista med listningstyper som vårdenheten stödjer."
* healthcareFacilities.supportedListingTypes ^comment = "TKB-fält: `healthcare_facilities.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*).

**Modellanteckning:** Lista med listningstyper som vårdenheten stödjer.
Kan utelämnas om information saknas eller inte behövs."
