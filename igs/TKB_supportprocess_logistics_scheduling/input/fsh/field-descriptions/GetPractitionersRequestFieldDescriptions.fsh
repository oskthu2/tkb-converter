// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPractitionersRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga tider ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”)."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. . Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
* originalAppointmentId ^comment = "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1)."
* timeTypeCode ^definition = "Tidstyp att söka personal för.

En konsument kan välja att söka personal baserat på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* timeTypeCode ^comment = "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Vårdtjänst att söka personal för. En konsument kan välja att söka personal baserat på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Kod för vårdtjänster uttrycks som SNOMED-CT koder (svensk upplaga)."
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
