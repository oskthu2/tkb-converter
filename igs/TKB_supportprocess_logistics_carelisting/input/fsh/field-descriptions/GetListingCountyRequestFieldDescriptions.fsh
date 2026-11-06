// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetListingCountyRequestFieldDescriptions
* actor ^definition = "Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^definition = "Id för den aktören som utför handlingen."
* actor.actorId ^comment = "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorId.root ^definition = "OID som visar typ av id.

Om aktören representeras av invånare eller vårdnadshavare kan OID vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV

Om aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1”"
* actor.actorId.root ^comment = "TKB-fält: `actor.actorId.root` (`string`, kardinalitet 1..1)."
* actor.actorId.iIExtension ^definition = "Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett HSAId om aktören är en organisation."
* actor.actorId.iIExtension ^comment = "TKB-fält: `actor.actorId.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`ActorTypeEnum`, kardinalitet 1..1)."
* personId ^definition = "Invånares personnummer"
* personId ^comment = "TKB-fält: `personId` (`IIType`, kardinalitet 1..1)."
* personId.root ^definition = "OID som visar typ av person-id som förmedlas. Kan vara:

”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.

” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV"
* personId.root ^comment = "TKB-fält: `personId.root` (`string`, kardinalitet 1..1)."
* personId.iIExtension ^definition = "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck."
* personId.iIExtension ^comment = "TKB-fält: `personId.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
