// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingCountyFieldDescriptions
* listingCounties ^definition = "Lista med regioner som invånare har aktiv listning på. Det är folkbokföringsregionens ansvar att hålla reda på i vilken/vilka regioner som invånare har aktiv(a) listningar hos."
* listingCounties ^comment = "TKB-fält: `listingCounties` (`IIType`, kardinalitet 0..*)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
