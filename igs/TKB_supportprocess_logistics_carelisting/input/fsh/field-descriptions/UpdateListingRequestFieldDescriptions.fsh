// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UpdateListingRequestFieldDescriptions
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* personId.root ^definition = "OID som visar typ av person-id som förmedlas. Kan vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV"
* personId.root ^comment = "TKB-fält: `personId.root` (`string`, kardinalitet 1..1)."
* personId.iIExtension ^definition = "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck."
* personId.iIExtension ^comment = "TKB-fält: `personId.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* newListingCounty ^definition = "Region i vilken invånare valt att utomlänslista sig hos.

Om länskoden är densamma som för den region som tar emot anropet, då ska anropet tolkas som att en tidigare utomlänslistning har upphört och att folkbokföringsregionen åter har ansvaret för invånaren. Folkbokföringsregionen ska då makulera information om att invånaren är utomlänslistad. Detta scenario kan exempelvis inträffa om den vårdenhet som invånaren utomlänslistat sig på upphör med sin verksamhet."
* newListingCounty ^comment = "TKB-fält: `newListingCounty` (`IIType`, kardinalitet 1..1)."
* newListingCounty.root ^definition = "OID för regionskod (enligt SCB).

1.2.752.129.2.2.1.18"
* newListingCounty.root ^comment = "TKB-fält: `newListingCounty.root` (`string`, kardinalitet 1..1)."
* newListingCounty.iIExtension ^definition = "Regionskod"
* newListingCounty.iIExtension ^comment = "TKB-fält: `newListingCounty.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* homeCounty ^definition = "Invånares folkbokföringsregion."
* homeCounty ^comment = "TKB-fält: `homeCounty` (`IIType`, kardinalitet 1..1)."
* homeCounty.root ^definition = "OID för regionskod (enligt SCB).

1.2.752.129.2.2.1.18"
* homeCounty.root ^comment = "TKB-fält: `homeCounty.root` (`string`, kardinalitet 1..1)."
* homeCounty.iIExtension ^definition = "Regionskod"
* homeCounty.iIExtension ^comment = "TKB-fält: `homeCounty.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* listingType ^definition = "Listningstyp som omlistningen (utomlänslistningen) gäller. Fältet ska endast förmedlas om den nya regionen har ett samverkansavtal med folkbokföringsregionen och behöver förmedla gemensamt överenskomna listningstyper som gäller i de båda regionerna.

Se listningstyper i referens [R3]"
* listingType ^comment = "TKB-fält: `listingType` (`CVType`, kardinalitet 0..1)."
* listingType.cVCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* listingType.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* listingType.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* listingType.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* listingType.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* listingType.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
