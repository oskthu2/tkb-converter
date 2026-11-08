// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonQueueStatusFieldDescriptions
* queueStatus ^definition = "Köstatus: `inQueue` (i kö) eller `notInQueue` (inte i kö)."
* queueStatus ^comment = "TKB-fält: `queueStatus` (`code (PersonQueueStatus)`, kardinalitet 1..1)."
* healthcare_facility ^definition = "Vårdenhet vars köstatus gäller."
* healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`Facility`, kardinalitet 0..1)."
* healthcare_facility.facilityId ^definition = "HSA-ID för vårdenheten."
* healthcare_facility.facilityId ^comment = "TKB-fält: `healthcare_facility.facilityId` (`string (HsaIdType)`, kardinalitet 1..1)."
* healthcare_facility.hasQueue ^definition = "Indikerar om vårdenheten har kö."
* healthcare_facility.hasQueue ^comment = "TKB-fält: `healthcare_facility.hasQueue` (`boolean`, kardinalitet 0..1)."
* healthcare_facility.supportedListingTypes ^definition = "Lista med listningstyper som vårdenheten stödjer."
* healthcare_facility.supportedListingTypes ^comment = "TKB-fält: `healthcare_facility.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*).

**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* healthcare_facility.facilityName ^definition = "Namn på vårdenheten."
* healthcare_facility.facilityName ^comment = "TKB-fält: `healthcare_facility.facilityName` (`string`, kardinalitet 1..1)."
