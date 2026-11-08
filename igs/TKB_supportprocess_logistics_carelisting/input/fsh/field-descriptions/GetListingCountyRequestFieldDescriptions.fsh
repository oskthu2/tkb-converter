// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingCountyRequestFieldDescriptions
* actor ^definition = "Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^definition = "Id för den aktören som utför handlingen."
* actor.actorId ^comment = "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`ActorTypeEnum`, kardinalitet 1..1).

**Modellanteckning:** actorType Tillåtna värden: CITIZEN, GUARDIAN, REGION, PRIVATE_CAREGIVER, SELF_OWNED_CAREGIVER, HEALTHCARE_ADVISER."
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
