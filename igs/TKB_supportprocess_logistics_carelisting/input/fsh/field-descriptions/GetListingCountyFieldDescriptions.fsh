// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingCountyFieldDescriptions
* listingCounties ^definition = "Lista med regioner som invånare har aktiv listning på. Det är folkbokföringsregionens ansvar att hålla reda på i vilken/vilka regioner som invånare har aktiv(a) listningar hos."
* listingCounties ^comment = "TKB-fält: `listingCounties` (`IIType`, kardinalitet 0..*)."
* listingCounties.root ^definition = "OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18)"
* listingCounties.root ^comment = "TKB-fält: `listingCounties.root` (`string`, kardinalitet 1..1)."
* listingCounties.iIExtension ^definition = "Länskod"
* listingCounties.iIExtension ^comment = "TKB-fält: `listingCounties.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
