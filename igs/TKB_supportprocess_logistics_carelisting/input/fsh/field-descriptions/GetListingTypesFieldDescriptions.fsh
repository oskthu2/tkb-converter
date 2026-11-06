// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingTypesFieldDescriptions
* listingTypes ^definition = "Listningstyper som producent erbjuder.

Se listningstyper i referens [R3]"
* listingTypes ^comment = "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*)."
* listingTypes.cVCode ^definition = "Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket."
* listingTypes.cVCode ^comment = "TKB-fält: `listingTypes.code`.

**Modellanteckning:** cVCode Heter code i schemat."
* listingTypes.codeSystem ^definition = "Sätt till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i.

Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27.

https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2"
* listingTypes.codeSystem ^comment = "TKB-fält: `listingTypes.codeSystem`."
* listingTypes.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* listingTypes.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* listingTypes.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* listingTypes.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
