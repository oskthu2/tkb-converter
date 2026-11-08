// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingFieldDescriptions
* listings ^definition = "Lista med listningsdetaljer för mottagningar som invånare är listad på. Om en region erbjuder sina invånare att kunna lista sig på mer än en listningstyp kan denna lista innehålla mer än en instans med listningsdetaljer (kopplade till en mottagning)."
* listings ^comment = "TKB-fält: `listings` (`ListingHealthcareFacilityType`, kardinalitet 0..*)."
* listings.validFromDate ^definition = "Datum från när listningen började gälla"
* listings.validFromDate ^comment = "TKB-fält: `listings.validFromDate` (`dateTime`, kardinalitet 0..1)."
* listings.validToDate ^definition = "Datum till när listningen fortfarande gäller"
* listings.validToDate ^comment = "TKB-fält: `listings.validToDate` (`dateTime`, kardinalitet 0..1)."
* listings.listingType ^definition = "Listningstyp som listningen gäller.

Se listningstyper i referens [R3]"
* listings.listingType ^comment = "TKB-fält: `listings.listingType` (`CVType`, kardinalitet 1..1)."
* listings.healthcareFacility ^definition = "Den valda listningsbara mottagningen"
* listings.healthcareFacility ^comment = "TKB-fält: `listings.healthcareFacility` (`HealthcareFacilityType`, kardinalitet 1..1)."
* listings.healthcareFacility.id ^definition = "HSAId för mottagningen

En tjänstekonsument bör kunna hantera HSAId:n som uttrycks både med versaler och gemener.

Exempelvis är:

”se12345-xyz” = ”SE12345-XYZ”"
* listings.healthcareFacility.id ^comment = "TKB-fält: `listings.healthcareFacility.id` (`HSAIdType / (string)`, kardinalitet 1..1)."
* listings.healthcareFacility.name ^definition = "Namn på vårdenheten"
* listings.healthcareFacility.name ^comment = "TKB-fält: `listings.healthcareFacility.name` (`string`, kardinalitet 1..1)."
* listings.healthcareFacility.hasQueue ^definition = "Visar huruvida mottagningen erbjuder kö när mottagningens maximala kvot av listade invånare har nåtts.

Skall endast sättas till TRUE om mottagningens maximala kvot uppnåtts och mottagningen erbjuder kö till listning, således:

TRUE = Maximala antalet invånare som mottagningen får lista är uppnått samt listningskö erbjuds

FALSE = För övrigt"
* listings.healthcareFacility.hasQueue ^comment = "TKB-fält: `listings.healthcareFacility.hasQueue` (`boolean`, kardinalitet 1..1)."
* listings.healthcareFacility.supportedListingTypes ^definition = "Lista med olika listningstyper som mottagningen erbjuder.

Om attributet är utelämnat innebär det att mottagningen endast erbjuder listning av typen öppenvårdsmottagning/primärvård. Se listningstyper i Informationsspecifikationen R3."
* listings.healthcareFacility.supportedListingTypes ^comment = "TKB-fält: `listings.healthcareFacility.supportedListingTypes` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1.

**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* listings.healthcareFacility.supportsHealthcarePersonnel ^definition = "Visar huruvida mottagningen erbjuder möjlighet att i samband med listning även välja specifik vårdpersonal, d v s ”fast läkarkontakt\".

Det är frivilligt för region att erbjuda denna möjlighet. Om möjligheten erbjuds behöver regionens listningssystem även stödja tjänstekontraktet GetAvailableHealthcarePersonnel som producent.

TRUE = mottagningen erbjuder fast läkarkontakt.

Utelämnas eller sätts till FALSE om mottagningen inte erbjuder fast läkarkontakt."
* listings.healthcareFacility.supportsHealthcarePersonnel ^comment = "TKB-fält: `listings.healthcareFacility.supportsHealthcarePersonnel` (`boolean`, kardinalitet 1..1)."
* listings.healthcareFacility.queueLength ^definition = "Nytt fält fr o m v2.1.

Om mottagningen erbjuder kö kan mottagningen redovisa hur många invånare som för tillfället står i listningskö till mottagningen. Fältet är frivilligt.

Observera:

Detta fält ingår i datatypen HealthcareFacilityType som återanvänds även i tjänstekontraktet GetAvailableHealthcareFacilities. I kontextet då en konsument hämtar listningsinformation om en invånare (GetListing) är det inte lika relevant för listningssystemet att förmedla detta värde, då invånaren redan är listad på mottagningen eller står i listningskö till mottagningen."
* listings.healthcareFacility.queueLength ^comment = "TKB-fält: `listings.healthcareFacility.queueLength` (`integer`, kardinalitet 0..1)."
* listings.healthcareFacility.estimatedWaitInQueue ^definition = "Nytt fält fr o m v2.1.

Om mottagningen erbjuder kö kan mottagningen redovisa hur lång väntetid som invånare kan förvänta sig. Fältet är frivilligt.

Observera:

Detta fält ingår i datatypen HealthcareFacilityType som återanvänds även i tjänstekontraktet GetAvailableHealthcareFacilities. I kontextet då en konsument hämtar listningsinformation om en invånare (GetListing) är det inte lika relevant för listningssystemet att förmedla detta värde, då invånaren redan är listad på mottagningen eller står i listningskö till mottagningen."
* listings.healthcareFacility.estimatedWaitInQueue ^comment = "TKB-fält: `listings.healthcareFacility.estimatedWaitInQueue` (`integer`, kardinalitet 0..1)."
* listings.healthcarePersonnel ^definition = "Vårdpersonal som är kopplade till listningen. Det är frivilligt för mottagning att erbjuda invånare möjlighet att dessutom välja vårdpersonal i samband med listningen. Om regionen erbjuder denna möjlighet ska regionen även vara producent för tjänstekontraktet GetAvailableHealthcarePersonnel. Det är Regionen kan därefter välja att erbjuda denna funktionalitet per mottagning, genom flaggan supportsHealthcarePersonnel (i typen HealthCareFacilityType).

Observera att en producent tillåts förmedla fast läkarkontakt genom att populera detta fält även om producent inte erbjuder invånaren möjlighet att digitalt välja fast läkarkontakt.

En konsument ska visa den förmedlade fasta läkarkontakten till invånaren, även om producent inte stödjer det frivilliga tjänstekontraktet GetAvailableHealthcarePersonnel."
* listings.healthcarePersonnel ^comment = "TKB-fält: `listings.healthcarePersonnel` (kardinalitet 0..1)."
* listings.healthcarePersonnel.id ^definition = "HsaId för vårdpersonal"
* listings.healthcarePersonnel.id ^comment = "TKB-fält: `listings.healthcarePersonnel.id` (`HSAIdType / (string)`, kardinalitet 1..1)."
* listings.healthcarePersonnel.name ^definition = "Namn (för- och efternamn) för vårdpersonal"
* listings.healthcarePersonnel.name ^comment = "TKB-fält: `listings.healthcarePersonnel.name` (`string`, kardinalitet 1..1)."
* listings.healthcarePersonnel.title ^definition = "Vårdpersonals titel"
* listings.healthcarePersonnel.title ^comment = "TKB-fält: `listings.healthcarePersonnel.title` (`string`, kardinalitet 0..1)."
* listings.isInQueue ^definition = "Flagga för att visa om invånare står i kö för att lista sig på mottagningen eller om invånare har en aktiv listning.

TRUE = Invånare står i kö

FALSE = Invånare har en aktiv listning på mottagningen"
* listings.isInQueue ^comment = "TKB-fält: `listings.isInQueue` (`boolean`, kardinalitet 1..1)."
* listings.queuePosition ^definition = "Nytt fält fr o m v2.1.

Förmedlar vilken plats i listningskön som invånaren har om invånaren tidigare har valt att ställa sig i kö på mottagningen"
* listings.queuePosition ^comment = "TKB-fält: `listings.queuePosition` (`integer`, kardinalitet 0..1)."
* listings.estimatedWaitInQueue ^definition = "Nytt fält fr o m v2.1.

Förmedlar hur lång uppskattad återstående väntetid invånaren kan förvänta sig om invånaren tidigare ställt sig i listningskön på mottagningen. Den uppskattade väntetiden ska återge ungefär hur länge till invånare uppskattas behöva vänta innan invånaren blir listad på mottagningen.

Uppskattad väntetid anges i antal dagar."
* listings.estimatedWaitInQueue ^comment = "TKB-fält: `listings.estimatedWaitInQueue` (`integer`, kardinalitet 0..1)."
* listings.remainingChanges ^definition = "Nytt fält fr o m v2.1.

Förmedlar hur många omlistningar som invånare har kvar att kunna göra.

För listning till primärvård får invånare lista om sig maximalt 3 ggr under en 12-månaders period enligt Socialstyrelsens föreskrifter."
* listings.remainingChanges ^comment = "TKB-fält: `listings.remainingChanges` (`integer`, kardinalitet 0..1)."
* resultCode ^definition = "Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket."
* resultCode ^comment = "TKB-fält: `listings.listingType.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som kan presenteras för slutanvändare i ett användargränssnitt i de fall resultCode == ERROR."
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
