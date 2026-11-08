// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: MakeAppointmentRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1)."
* timeslotId ^definition = "Unik identifierare för tidsluckan som ska bokas. Ska uttryckas som uuid (universally unique identifier)."
* timeslotId ^comment = "TKB-fält: `timeslotId` (`uuidType`, kardinalitet 1..1)."
* reasonText ^definition = "Patientens anledning till bokningen, uttryckt som fritext"
* reasonText ^comment = "TKB-fält: `reasonText` (`string`, kardinalitet 0..1)."
* reasonCode ^definition = "Patientens anledning till bokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själva koder och kodsystem att använda"
* reasonCode ^comment = "TKB-fält: `reasonCode` (`CVType`, kardinalitet 0..1)."
