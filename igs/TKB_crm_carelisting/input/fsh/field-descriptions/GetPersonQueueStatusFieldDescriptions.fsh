// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonQueueStatusFieldDescriptions
* queueStatus ^definition = "Köstatus: `inQueue` (i kö) eller `notInQueue` (inte i kö)."
* queueStatus ^comment = "TKB-fält: `queueStatus` (`code (PersonQueueStatus)`, kardinalitet 1..1).

**Modellanteckning:** Köstatus för personen i fråga.
Tillåtna värden: inQueue (i kö) eller notInQueue (inte i kö).
Kodverk: PersonQueueStatusVS."
* healthcareFacility ^definition = "Vårdenhet vars köstatus gäller."
* healthcareFacility ^comment = "TKB-fält: `healthcare_facility` (`Facility`, kardinalitet 0..1).

**Modellanteckning:** Facility: vårdenhet där eventuell köstatus föreligger.
Utelämnas om personen inte är i kö."
* healthcareFacility.facilityId ^definition = "HSA-ID för vårdenheten."
* healthcareFacility.facilityId ^comment = "TKB-fält: `healthcare_facility.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).

**Modellanteckning:** HSA-ID för vårdenheten.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id)."
* healthcareFacility.facilityName ^definition = "Namn på vårdenheten."
* healthcareFacility.facilityName ^comment = "TKB-fält: `healthcare_facility.facilityName` (`string`, kardinalitet 1..1).

**Modellanteckning:** Enhetens officiella namn."
* healthcareFacility.hasQueue ^definition = "Indikerar om vårdenheten har kö."
* healthcareFacility.hasQueue ^comment = "TKB-fält: `healthcare_facility.hasQueue` (`boolean`, kardinalitet 0..1).

**Modellanteckning:** Boolskt värde som indikerar om vårdenheten har kö."
* healthcareFacility.supportedListingTypes ^definition = "Lista med listningstyper som vårdenheten stödjer."
* healthcareFacility.supportedListingTypes ^comment = "TKB-fält: `healthcare_facility.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*)."
