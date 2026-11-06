// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetTimeTypesRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga datum ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”)."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* actor.actorId.iiExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* actor.actorType.snomedCtCode ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** snomedCtCode Heter code i schemat."
* actor.actorType.codeSystem ^definition = "Tillåtna värden: 1.2.752.116.2.1.1."
* actor.actorType.codeSystem ^comment = "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1)."
* actor.actorType.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* actor.actorType.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* actor.actorType.displayName ^comment = "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1)."
* actor.actorType.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Filtrering på tidstyper som kan utföra en specifik vårdtjänst. Vårdtjänstkoden som anges här ska motsvara en kod enligt SNOMED-CT (svenska upplagan)"
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
* practitionerId ^definition = "Filtrering på tidstyper som erbjuds av specifik vårdpersonal"
* practitionerId ^comment = "TKB-fält: `practitionerId` (`HSAIdType`, kardinalitet 0..1)."
* practitionerId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* practitionerId.hSAIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
* personId.root ^definition = "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.personIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** personIdExtension Heter extension i schemat."
