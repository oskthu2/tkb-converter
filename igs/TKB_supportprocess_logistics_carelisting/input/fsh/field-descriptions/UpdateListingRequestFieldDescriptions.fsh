// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UpdateListingRequestFieldDescriptions
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* newListingCounty ^definition = "Region i vilken invånare valt att utomlänslista sig hos.

Om länskoden är densamma som för den region som tar emot anropet, då ska anropet tolkas som att en tidigare utomlänslistning har upphört och att folkbokföringsregionen åter har ansvaret för invånaren. Folkbokföringsregionen ska då makulera information om att invånaren är utomlänslistad. Detta scenario kan exempelvis inträffa om den vårdenhet som invånaren utomlänslistat sig på upphör med sin verksamhet."
* newListingCounty ^comment = "TKB-fält: `newListingCounty` (`IIType`, kardinalitet 1..1)."
* homeCounty ^definition = "Invånares folkbokföringsregion."
* homeCounty ^comment = "TKB-fält: `homeCounty` (`IIType`, kardinalitet 1..1)."
* listingType ^definition = "Listningstyp som omlistningen (utomlänslistningen) gäller. Fältet ska endast förmedlas om den nya regionen har ett samverkansavtal med folkbokföringsregionen och behöver förmedla gemensamt överenskomna listningstyper som gäller i de båda regionerna.

Se listningstyper i referens [R3]"
* listingType ^comment = "TKB-fält: `listingType` (`CVType`, kardinalitet 0..1)."
