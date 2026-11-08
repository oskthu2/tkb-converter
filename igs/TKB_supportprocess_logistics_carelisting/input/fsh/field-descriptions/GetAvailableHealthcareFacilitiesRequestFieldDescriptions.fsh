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
