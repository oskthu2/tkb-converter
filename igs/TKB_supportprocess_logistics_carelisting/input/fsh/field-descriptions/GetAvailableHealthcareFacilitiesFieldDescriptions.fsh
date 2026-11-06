// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableHealthcareFacilitiesFieldDescriptions
* healthcareFacilities ^definition = "Lista med de listningsbara mottagningarna, baserat på filtervärden i begäran."
* healthcareFacilities ^comment = "TKB-fält: `healthcareFacilities` (`HealthcareFacilityType`, kardinalitet 0..*).

**Modellanteckning:** Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen."
* healthcareFacilities.healthcareFacilityId ^definition = "HSAId för mottagningen

En tjänstekonsument bör kunna hantera HSAId:n som uttrycks både med versaler och gemener.

Exempelvis är:

”se12345-xyz” = ”SE12345-XYZ”"
* healthcareFacilities.healthcareFacilityId ^comment = "TKB-fält: `healthcareFacilities.id` (`HSAIdType / (string)`, kardinalitet 1..1).

**Modellanteckning:** healthcareFacilityId Heter id i schemat."
* healthcareFacilities.healthcareFacilityName ^definition = "Namn på vårdenheten"
* healthcareFacilities.healthcareFacilityName ^comment = "TKB-fält: `healthcareFacilities.name` (`string`, kardinalitet 1..1).

**Modellanteckning:** Namn på vårdenheten. Heter name i schemat."
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
* healthcareFacilities.supportedListingTypes.cVCode ^definition = "Kod för listningstypen som mottagningen stödjer."
* healthcareFacilities.supportedListingTypes.cVCode ^comment = "TKB-fält: `healthcareFacilities.supportedListingTypes.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* healthcareFacilities.supportedListingTypes.codeSystem ^definition = "OID, urn eller liknande som visar på från vilket kodverk den angivna koden/listningstypen innefattas.

Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för codeSystem vara ”1.2.752.129.5.1.27”."
* healthcareFacilities.supportedListingTypes.codeSystem ^comment = "TKB-fält: `healthcareFacilities.supportedListingTypes.codeSystem` (`string`, kardinalitet 1..1)."
* healthcareFacilities.supportedListingTypes.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* healthcareFacilities.supportedListingTypes.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* healthcareFacilities.supportedListingTypes.displayName ^definition = "Benämning av listningstypen. Benämningen ska vara uttryckt på ett invånarvänligt sätt för att kunna förmedlas i invånarens användargränssnitt i e-tjänst."
* healthcareFacilities.supportedListingTypes.displayName ^comment = "TKB-fält: `healthcareFacilities.supportedListingTypes.displayName` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* healthcareFacilities.supportedListingTypes.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* healthcareFacilities.supportsHealthcarePersonnel ^definition = "Visar huruvida mottagningen erbjuder möjlighet att i samband med listning även välja specifik vårdpersonal, d v s ”fast läkarkontakt\".

Det är frivilligt för region att erbjuda denna möjlighet. Om möjligheten erbjuds behöver regionens listningssystem även stödja tjänstekontraktet GetAvailableHealthcarePersonnel som producent.

TRUE = mottagningen erbjuder fast läkarkontakt.

Utelämnas eller sätts till FALSE om mottagningen inte erbjuder fast läkarkontakt."
* healthcareFacilities.supportsHealthcarePersonnel ^comment = "TKB-fält: `healthcareFacilities.supportsHealthcarePersonnel` (`boolean`, kardinalitet 1..1)."
* healthcareFacilities.queueLength ^definition = "Nytt attribut fr o m version 2.1.

Om mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång kön är just nu."
* healthcareFacilities.queueLength ^comment = "TKB-fält: `healthcareFacilities.queueLength` (`integer`, kardinalitet 0..1).

**Modellanteckning:** (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
* healthcareFacilities.estimatedWaitInQueue ^definition = "Nytt attribut fr o m version 2.1.

Om mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång den uppskattade väntetiden är tills invånare kan få en listningsplats. Uppskattad väntetid anges i antal dagar och sätts frivilligt av listningssystemet endast då mpttagningens maxtak har uppnåtts och att mottagningen erbjuder kö."
* healthcareFacilities.estimatedWaitInQueue ^comment = "TKB-fält: `healthcareFacilities.estimatedWaitInQueue` (`integer`, kardinalitet 0..1).

**Modellanteckning:** (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
