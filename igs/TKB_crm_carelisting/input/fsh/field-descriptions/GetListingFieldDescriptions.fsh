// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingFieldDescriptions
* subjectOfCare ^definition = "En persons listningar."
* subjectOfCare ^comment = "TKB-fält: `subjectOfCare` (`SubjectOfCare`, kardinalitet 1..1).

**Modellanteckning:** SubjectOfCare: root-element som beskriver tjänsteval för en person.
PostCondition: tillgängliga listningstyper för en listnings vårdenhet är utelämnad."
* subjectOfCare.personId ^definition = "Identitetsbeteckning för vård- och omsorgstagaren."
* subjectOfCare.personId ^comment = "TKB-fält: `subjectOfCare.personId` (`string`, kardinalitet 1..1).

**Modellanteckning:** Personnummer, samordningsnummer eller reservnummer för vård- och omsorgstagaren.
Pattern: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}"
* subjectOfCare.listing ^definition = "En listning för personen. PostCondition: tillgängliga listningstyper för listningens vårdenhet är utelämnad."
* subjectOfCare.listing ^comment = "TKB-fält: `subjectOfCare.listing` (`Listing`, kardinalitet 0..*).

**Modellanteckning:** En persons listning, dvs. en koppling till en vårdenhet och optionellt en resurs."
* subjectOfCare.listing.validFromDate ^definition = "Datum för när listningen började gälla."
* subjectOfCare.listing.validFromDate ^comment = "TKB-fält: `subjectOfCare.listing.validFromDate` (`dateTime`, kardinalitet 0..1)."
* subjectOfCare.listing.validToDate ^definition = "Datum när listningen slutade gälla. Om datum saknas är det implicit obestämt in i framtiden."
* subjectOfCare.listing.validToDate ^comment = "TKB-fält: `subjectOfCare.listing.validToDate` (`dateTime`, kardinalitet 0..1)."
* subjectOfCare.listing.listingType ^definition = "Typ av listning, t.ex. BVC, HLM, FL."
* subjectOfCare.listing.listingType ^comment = "TKB-fält: `subjectOfCare.listing.listingType` (`string (ListingType)`, kardinalitet 1..1).

**Modellanteckning:** Typ av listning, t.ex. BVC, HLM, FL.
Listningstyp saknar centralt kodverk — se QUESTIONS.md."
* subjectOfCare.listing.healthcareFacility ^definition = "Vårdinrättning/vårdenhet som ansvarar för personen."
* subjectOfCare.listing.healthcareFacility ^comment = "TKB-fält: `subjectOfCare.listing.healthcare_facility` (`Facility`, kardinalitet 1..1).

**Modellanteckning:** Facility: Vårdinrättning/vårdenhet som ansvarar för personen som listat sig hos dem.
Det är denna inrättning som för ekonomisk ersättning för personen."
* subjectOfCare.listing.healthcareFacility.facilityId ^definition = "HSA-ID för vårdenheten."
* subjectOfCare.listing.healthcareFacility.facilityId ^comment = "TKB-fält: `subjectOfCare.listing.healthcare_facility.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).

**Modellanteckning:** HSA-ID eller alternativt Orgnr+lokalt id för vårdenheten.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id)."
* subjectOfCare.listing.healthcareFacility.facilityName ^definition = "Namn på vårdenheten."
* subjectOfCare.listing.healthcareFacility.facilityName ^comment = "TKB-fält: `subjectOfCare.listing.healthcare_facility.facilityName` (`string`, kardinalitet 1..1).

**Modellanteckning:** Enhetens officiella namn."
* subjectOfCare.listing.healthcareFacility.hasQueue ^definition = "Indikerar om vårdenheten har kö vid listningar."
* subjectOfCare.listing.healthcareFacility.hasQueue ^comment = "TKB-fält: `subjectOfCare.listing.healthcare_facility.hasQueue` (`boolean`, kardinalitet 0..1).

**Modellanteckning:** Boolskt värde som indikerar om vårdenheten har kö vid listningar.
Kan utelämnas om information inte har någon betydelse i kontexten."
* subjectOfCare.listing.healthcareFacility.supportedListingTypes ^definition = "Lista med listningstyper som vårdenheten stödjer. Utelämnas i GetListing-svaret (per postcondition)."
* subjectOfCare.listing.healthcareFacility.supportedListingTypes ^comment = "TKB-fält: `subjectOfCare.listing.healthcare_facility.supportedListingTypes` (`string`, kardinalitet 0..*)."
* subjectOfCare.listing.resource ^definition = "Specifik resurs som utför listningstjänsten, t.ex. en läkare eller husläkarteam."
* subjectOfCare.listing.resource ^comment = "TKB-fält: `subjectOfCare.listing.resource` (`Resource`, kardinalitet 0..1)."
* subjectOfCare.listing.resource.resourceId ^definition = "HSA-ID för resursen."
* subjectOfCare.listing.resource.resourceId ^comment = "TKB-fält: `subjectOfCare.listing.resource.resourceId` (`string (HsaIdType)`, kardinalitet 1..1).

**Modellanteckning:** HSA-ID för resursen (personal).
I de fall HSA-id inte finns tillgängligt kan alternativ id-beteckning användas."
* subjectOfCare.listing.resource.resourceName ^definition = "Namn på vårdgivaren."
* subjectOfCare.listing.resource.resourceName ^comment = "TKB-fält: `subjectOfCare.listing.resource.resourceName` (`string`, kardinalitet 1..1).

**Modellanteckning:** Aktuell persons förnamn och efternamn."
