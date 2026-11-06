// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableHealthcareFacilitiesRequestFieldDescriptions
* healthcareFacilities ^definition = "En lista med HSAId:n som tjänstekonsument önskar hämta/filtrera på.

En tjänsteproducent ska kunna hantera HSAId:n som uttrycks både med versaler eller gemener.

Exempelvis är:

”se12345-xyz” = ”SE12345-XYZ”"
* healthcareFacilities ^comment = "TKB-fält: `healthcareFacilities` (`HSAIdType / (string)`, kardinalitet 0..*)."
* listingTypes ^definition = "Lista med listningstyper som tjänstekonsument önskar filtrera listningsbara mottagningar på. Se listningstyper i referens [R3]"
* listingTypes ^comment = "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*)."
* listingTypes.cVCode ^definition = "Kod för listningstypen som ska filtreras på. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för code vara PV.

Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket.

De regionala koderna förväntas hämtas av tjänstekonsument via tjänstekontraktet GetListingTypes (adresserat till aktuell region)."
* listingTypes.cVCode ^comment = "TKB-fält: `listingTypes.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* listingTypes.codeSystem ^definition = "Sätts till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas.

Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för codeSystem vara ”1.2.752.129.5.1.27”.

https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2"
* listingTypes.codeSystem ^comment = "TKB-fält: `listingTypes.codeSystem` (`string`, kardinalitet 1..1)."
* listingTypes.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* listingTypes.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* listingTypes.displayName ^definition = "Fältet kan utelämnas av konsument. Det är producentens (regionens listningssystem) ansvar att tillhandahålla listningstypens namn. En producent kan ignorera detta värde om konsument ändå skickar med ett namn på listningtyp för filtreringen. Filtreringen ska ske baserat på kombinationen code + codeSystem."
* listingTypes.displayName ^comment = "TKB-fält: `listingTypes.displayName` (`string`, kardinalitet 0..1)."
* listingTypes.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
