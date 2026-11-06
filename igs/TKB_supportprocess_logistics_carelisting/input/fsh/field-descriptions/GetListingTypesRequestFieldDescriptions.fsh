// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingTypesRequestFieldDescriptions
* personId ^definition = "Invånares personnummer. Tillåts utelämnas om konsument efterfrågar samtliga listningstyper som region (logicalAddress) erbjuder."
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 0..1)."
* personId.root ^definition = "OID som visar typ av person-id som förmedlas. Kan vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV"
* personId.root ^comment = "TKB-fält: `personId.root` (`string`, kardinalitet 1..1)."
* personId.iIExtension ^definition = "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck."
* personId.iIExtension ^comment = "TKB-fält: `personId.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* homeCountyCode ^comment = "TKB-fält: `homeCountyCode` (`IIType`, kardinalitet 0..1)."
* homeCountyCode.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* homeCountyCode.iIExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
