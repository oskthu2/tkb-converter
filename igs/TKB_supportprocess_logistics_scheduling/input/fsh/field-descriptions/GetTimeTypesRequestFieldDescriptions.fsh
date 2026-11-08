// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetTimeTypesRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga datum ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”)."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* healthcareServiceCode ^definition = "Filtrering på tidstyper som kan utföra en specifik vårdtjänst. Vårdtjänstkoden som anges här ska motsvara en kod enligt SNOMED-CT (svenska upplagan)"
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
* practitionerId ^definition = "Filtrering på tidstyper som erbjuds av specifik vårdpersonal"
* practitionerId ^comment = "TKB-fält: `practitionerId` (`HSAIdType`, kardinalitet 0..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
