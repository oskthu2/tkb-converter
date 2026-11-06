// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateListingRequestFieldDescriptions
* actor ^definition = "Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren. Inga andra aktörer tillåts nyttja detta tjänstekontakt."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^definition = "Id för den aktören som utför handlingen."
* actor.actorId ^comment = "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorId.root ^definition = "OID som visar typ av id.

Om aktören representeras av invånare eller vårdnadshavare kan OID vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV

Om aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1”"
* actor.actorId.root ^comment = "TKB-fält: `actor.actorId.root` (`string`, kardinalitet 1..1)."
* actor.actorId.iIExtension ^definition = "Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett organisations-HSAId om aktören är en organisation."
* actor.actorId.iIExtension ^comment = "TKB-fält: `actor.actorId.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`ActorTypeEnum`, kardinalitet 1..1)."
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* personId.root ^definition = "OID som visar typ av person-id som förmedlas. Kan vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV"
* personId.root ^comment = "TKB-fält: `personId.root` (`String`, kardinalitet 1..1)."
* personId.iIExtension ^definition = "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck."
* personId.iIExtension ^comment = "TKB-fält: `personId.extension` (`String`).

**Modellanteckning:** iIExtension Heter extension i schemat."
* healthcareFacilityHSAId ^definition = "Den valda listningsbara mottagningens HSAId.

En producent bör kunna hantera HSAId:n som uttrycks både med versaler eller gemener.

Exempelvis är:

”se12345-xyz” = ”SE12345-XYZ”"
* healthcareFacilityHSAId ^comment = "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType / (string)`, kardinalitet 1..1)."
* listingType ^definition = "Kod för listningstyp. Denna kod har tidigare hämtats från de listningstyper som vald region stödjer, exempelvis via tjänstekontraktet GetListingTypes."
* listingType ^comment = "TKB-fält: `listingType` (`CVType`, kardinalitet 1..1)."
* listingType.cVCode ^definition = "Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket."
* listingType.cVCode ^comment = "TKB-fält: `listingType.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* listingType.codeSystem ^definition = "Sätts till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i.

Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27.

https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2"
* listingType.codeSystem ^comment = "TKB-fält: `listingType.codeSystem` (`string`, kardinalitet 1..1)."
* listingType.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* listingType.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* listingType.displayName ^definition = "Fältet kan utelämnas av konsument. Det är producentens (regionens listningssystem) ansvar att tillhandahålla listningstypens namn. En producent kan ignorera detta värde om konsument ändå skickar med ett namn på listningtyp."
* listingType.displayName ^comment = "TKB-fält: `listingType.displayName` (`string`, kardinalitet 0..1)."
* listingType.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* healthcarePersonnel ^definition = "Vald vårdpersonals-/husläkares HSAId.

Det är frivilligt för mottagningen att dessutom erbjuda val av vårdpersonal. Mottagningens valbara vårdpersonal fås genom tjänstekontraktet GetAvailableHealthcarePersonnel.

Observera:

Om invånaren redan är listad på mottagningen sedan tidigare ska detta anrop ses som att invånaren endast vill förändra sitt val av fast läkarkontakt."
* healthcarePersonnel ^comment = "TKB-fält: `healthcarePersonnel` (`HSAIdType`, kardinalitet 0..1)."
* addToQueue ^definition = "Förmedlar om invånare vill ställa sig i kö om den tilltänkta listningsbara mottagningen inte tillåts ta emot mer än ett maximalt antal listade invånare och om mottagningen erbjuder möjlighet att ställa sig i listningskö. Huruvida en mottagning erbjuder listningskö eller inte kan hämtas via tjänstekontraktet GetAvailableHealthcareFacilities.

”TRUE” = Invånare vill ställa sig i listningskö.

”FALSE” eller att attributet är utelämnat = Invånare vill inte ställa sig i listningskö eller vill gå ur kön.

Observera:

Om invånaren redan står i kö på denna mottagning och addToQueue = FALSE ska detta tolkas som att invånaren vill gå ur kön."
* addToQueue ^comment = "TKB-fält: `addToQueue` (`boolean`, kardinalitet 0..1)."
* homeCounty ^definition = "Invånares folkbokföringsregion.

Kan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen), d v s om

logicalAddress = folkbokföringsregion

och

healthcareFacilityHSAId pekar på en mottagning som har vårdavtal med regionen och är listningsbar där.

Annars är fältet obligatoriskt."
* homeCounty ^comment = "TKB-fält: `homeCounty` (`IIType`, kardinalitet 0..1)."
* homeCounty.root ^definition = "OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18)"
* homeCounty.root ^comment = "TKB-fält: `homeCounty.root` (`string`, kardinalitet 1..1)."
* homeCounty.iIExtension ^definition = "Länskod"
* homeCounty.iIExtension ^comment = "TKB-fält: `homeCounty.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* newListingCounty ^definition = "Pålistningsregion, d v s den region där vald mottagning har ett vårdavtal och är listningsbar i.

Kan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen)"
* newListingCounty ^comment = "TKB-fält: `newListingCounty` (`IIType`, kardinalitet 0..1)."
* newListingCounty.root ^definition = "OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18)"
* newListingCounty.root ^comment = "TKB-fält: `newListingCounty.root` (`string`, kardinalitet 1..1)."
* newListingCounty.iIExtension ^definition = "Länskod"
* newListingCounty.iIExtension ^comment = "TKB-fält: `newListingCounty.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
