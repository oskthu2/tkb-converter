// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableHealthcareFacilitiesFieldDescriptions
* healthcareFacilities ^definition = "Lista med de listningsbara mottagningarna, baserat på filtervärden i begäran."
* healthcareFacilities ^comment = "TKB-fält: `healthcareFacilities` (`HealthcareFacilityType`, kardinalitet 0..*)."
* healthcareFacilities.id ^definition = "HSAId för mottagningen

En tjänstekonsument bör kunna hantera HSAId:n som uttrycks både med versaler och gemener.

Exempelvis är:

”se12345-xyz” = ”SE12345-XYZ”"
* healthcareFacilities.id ^comment = "TKB-fält: `healthcareFacilities.id` (`HSAIdType / (string)`, kardinalitet 1..1)."
* healthcareFacilities.name ^definition = "Namn på vårdenheten"
* healthcareFacilities.name ^comment = "TKB-fält: `healthcareFacilities.name` (`string`, kardinalitet 1..1)."
* healthcareFacilities.hasQueue ^definition = "Visar huruvida mottagningen erbjuder kö när mottagningens maximala kvot av listade invånare har nåtts.

Skall endast sättas till TRUE om mottagningens maximala kvot uppnåtts och mottagningen erbjuder kö till listning, således:

TRUE = Maximala antalet invånare som mottagningen får lista är uppnått samt listningskö erbjuds

FALSE = För övrigt"
* healthcareFacilities.hasQueue ^comment = "TKB-fält: `healthcareFacilities.hasQueue` (`boolean`, kardinalitet 1..1)."
* healthcareFacilities.supportedListingTypes ^definition = "Lista med olika listningstyper som mottagningen erbjuder.

Om attributet är utelämnat innebär det att mottagningen endast erbjuder listning av typen öppenvårdsmottagning/primärvård. Se listningstyper i Informationsspecifikationen R3."
* healthcareFacilities.supportedListingTypes ^comment = "TKB-fält: `healthcareFacilities.supportedListingTypes` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1.

**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* healthcareFacilities.supportsHealthcarePersonnel ^definition = "Visar huruvida mottagningen erbjuder möjlighet att i samband med listning även välja specifik vårdpersonal, d v s ”fast läkarkontakt\".

Det är frivilligt för region att erbjuda denna möjlighet. Om möjligheten erbjuds behöver regionens listningssystem även stödja tjänstekontraktet GetAvailableHealthcarePersonnel som producent.

TRUE = mottagningen erbjuder fast läkarkontakt.

Utelämnas eller sätts till FALSE om mottagningen inte erbjuder fast läkarkontakt."
* healthcareFacilities.supportsHealthcarePersonnel ^comment = "TKB-fält: `healthcareFacilities.supportsHealthcarePersonnel` (`boolean`, kardinalitet 1..1)."
* healthcareFacilities.queueLength ^definition = "Nytt attribut fr o m version 2.1.

Om mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång kön är just nu."
* healthcareFacilities.queueLength ^comment = "TKB-fält: `healthcareFacilities.queueLength` (`integer`, kardinalitet 0..1)."
* healthcareFacilities.estimatedWaitInQueue ^definition = "Nytt attribut fr o m version 2.1.

Om mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång den uppskattade väntetiden är tills invånare kan få en listningsplats. Uppskattad väntetid anges i antal dagar och sätts frivilligt av listningssystemet endast då mpttagningens maxtak har uppnåtts och att mottagningen erbjuder kö."
* healthcareFacilities.estimatedWaitInQueue ^comment = "TKB-fält: `healthcareFacilities.estimatedWaitInQueue` (`integer`, kardinalitet 0..1)."
* resultCode ^definition = "Kod för listningstypen som mottagningen stödjer."
* resultCode ^comment = "TKB-fält: `healthcareFacilities.supportedListingTypes.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
