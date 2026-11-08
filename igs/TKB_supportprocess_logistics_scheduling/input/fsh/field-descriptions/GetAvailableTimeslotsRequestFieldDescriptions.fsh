// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableTimeslotsRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga tider ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”)."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* originalAppointmentId ^comment = "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
* startDateInclusive ^definition = "Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD."
* startDateInclusive ^comment = "TKB-fält: `startDateInclusive` (`DT (string)`, kardinalitet 1..1)."
* endDateInclusive ^definition = "Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD."
* endDateInclusive ^comment = "TKB-fält: `endDateInclusive` (`DT (string)`, kardinalitet 1..1)."
* priority ^definition = "Konsumentens prioritering av behovet för bokning/besök. Prioritet bestäms av ett steg som föregås av tidbokningen. Exempel på sådant försteg kan vara en tjänst som triagerar invånaren/patienten. Prioritet bör inte gå att väljas av invånaren själv."
* priority ^comment = "TKB-fält: `priority` (`Integer`, kardinalitet 0..1)."
* practitionerId ^definition = "HSA-id för HoS-personal."
* practitionerId ^comment = "TKB-fält: `practitionerId` (`HsaIdType (string)`, kardinalitet 0..1)."
* timeTypeCode ^definition = "Tidstyp att söka lediga datum för.

En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* timeTypeCode ^comment = "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Kod för vårdtjänst ska uttryckas som en Snomed-CT kod (svensk utgåva)."
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
* careContactCode ^definition = "Kontaktsätt att söka lediga datum för."
* careContactCode ^comment = "TKB-fält: `careContactCode` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
