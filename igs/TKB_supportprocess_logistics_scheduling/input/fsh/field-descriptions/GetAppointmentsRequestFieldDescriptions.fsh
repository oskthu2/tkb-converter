// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAppointmentsRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorId ^comment = "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1)."
* actor.actorType ^comment = "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1)."
* personId ^definition = "Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1)."
* fromDate ^definition = "Filtrering på tidbokningar som ska äga rum fr o m datum."
* fromDate ^comment = "TKB-fält: `fromDate` (`DT`, kardinalitet 0..1)."
* toDate ^definition = "Filtrering på tidbokningar som ska äga rum t o m datum."
* toDate ^comment = "TKB-fält: `toDate` (`DT`, kardinalitet 0..1)."
* timeTypeCode ^definition = "Filtrering på tidbokningar som gäller en specifik tidstyps-kod."
* timeTypeCode ^comment = "TKB-fält: `timetypeCode` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Filtrering på tidbokningar som gäller en specifik vårdtjänst. Koden förväntas vara hämtad från svenska utgåvan av Snomed-CT (OID: 1.2.752.116.2.1.1)"
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
