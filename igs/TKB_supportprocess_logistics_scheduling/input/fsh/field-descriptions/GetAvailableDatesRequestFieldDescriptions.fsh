// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableDatesRequestFieldDescriptions
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
* originalAppointmentId ^comment = "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
* personId.root ^definition = "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.personIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** personIdExtension Heter extension i schemat."
* startDateInclusive ^definition = "Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD."
* startDateInclusive ^comment = "TKB-fält: `startDateInclusive` (`DT (string)`, kardinalitet 1..1)."
* endDateInclusive ^definition = "Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD."
* endDateInclusive ^comment = "TKB-fält: `endDateInclusive` (`DT (string)`, kardinalitet 1..1)."
* priority ^definition = "Konsumentens prioritering av behovet för bokning/besök. Prioritet bestäms av ett steg som föregås av tidbokningen. Exempel på sådant försteg kan vara en tjänst som triagerar invånaren/patienten. Prioritet bör inte gå att väljas av invånaren själv."
* priority ^comment = "TKB-fält: `priority` (`integer`, kardinalitet 0..1)."
* practitionerId ^definition = "HSA-id för HoS-personal att filtrera lediga tider på."
* practitionerId ^comment = "TKB-fält: `practitionerId` (`HsaIdType (string)`, kardinalitet 0..1)."
* practitionerId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* practitionerId.hSAIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* timeTypeCode ^definition = "Tidstyp att söka lediga datum för.

En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* timeTypeCode ^comment = "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Koden som anges ska motsvara en SnomedCT-kod"
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
* careContactCode ^definition = "Kontaktsätt att söka lediga datum för."
* careContactCode ^comment = "TKB-fält: `careContactCode` (`CVType`, kardinalitet 0..1)."
* careContactCode.cvCode ^definition = "Kod för det kontaktsätt som konsument söker efter lediga datum"
* careContactCode.cvCode ^comment = "TKB-fält: `careContactCode.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* careContactCode.codeSystem ^definition = "Konsument rekommenderas att även ange vilket kodsystem som kod för kontaktsätt innefattas i."
* careContactCode.codeSystem ^comment = "TKB-fält: `careContactCode.codeSystem` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* careContactCode.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* careContactCode.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careContactCode.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* careContactCode.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
