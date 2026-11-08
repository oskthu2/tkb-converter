// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CreateListingRequestFieldDescriptions
* actor ^definition = "Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren. Inga andra aktörer tillåts nyttja detta tjänstekontakt."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^definition = "Id för den aktören som utför handlingen."
* actor.actorId ^comment = "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`ActorTypeEnum`, kardinalitet 1..1).

**Modellanteckning:** actorType Tillåtna värden: CITIZEN, GUARDIAN, REGION, PRIVATE_CAREGIVER, SELF_OWNED_CAREGIVER, HEALTHCARE_ADVISER."
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* healthcareFacilityHSAId ^definition = "Den valda listningsbara mottagningens HSAId.

En producent bör kunna hantera HSAId:n som uttrycks både med versaler eller gemener.

Exempelvis är:

”se12345-xyz” = ”SE12345-XYZ”"
* healthcareFacilityHSAId ^comment = "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType / (string)`, kardinalitet 1..1)."
* listingType ^definition = "Kod för listningstyp. Denna kod har tidigare hämtats från de listningstyper som vald region stödjer, exempelvis via tjänstekontraktet GetListingTypes."
* listingType ^comment = "TKB-fält: `listingType` (`CVType`, kardinalitet 1..1)."
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
* newListingCounty ^definition = "Pålistningsregion, d v s den region där vald mottagning har ett vårdavtal och är listningsbar i.

Kan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen)"
* newListingCounty ^comment = "TKB-fält: `newListingCounty` (`IIType`, kardinalitet 0..1)."
