// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableHealthcarePersonnelRequestFieldDescriptions
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* personId.root ^definition = "OID som visar typ av person-id som förmedlas. Kan vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV"
* personId.root ^comment = "TKB-fält: `personId.root` (`string`)."
* personId.iIExtension ^definition = "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck."
* personId.iIExtension ^comment = "TKB-fält: `personId.extension` (`string`).

**Modellanteckning:** iIExtension Heter extension i schemat."
* healthcareFacilityHSAId ^comment = "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1)."
* listingTypes ^definition = "Lista med listningstyper som konsument önskar filtrera på. Se listningstyper i referens [R3]"
* listingTypes ^comment = "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*)."
* listingTypes.cVCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* listingTypes.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* listingTypes.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* listingTypes.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* listingTypes.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* listingTypes.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
