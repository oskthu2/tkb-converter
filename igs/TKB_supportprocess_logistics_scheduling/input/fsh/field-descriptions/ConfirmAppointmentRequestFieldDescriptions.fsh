// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ConfirmAppointmentRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* appointmentId ^definition = "Unikt id för bokningen som ska bekräftas. Ska uttryckas som uuid (universally unique identifier)."
* appointmentId ^comment = "TKB-fält: `appointmentId` (`uuidType`, kardinalitet 1..1)."
* personId ^definition = "Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1)."
