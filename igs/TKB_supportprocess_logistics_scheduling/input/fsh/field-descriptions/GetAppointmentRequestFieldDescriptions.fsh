// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAppointmentRequestFieldDescriptions
* actor ^definition = "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
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
* appointmentId ^definition = "Unikt id för bokningen. Ska uttryckas som uuid (universally unique identifier)."
* appointmentId ^comment = "TKB-fält: `appointmentId` (`uuidType`, kardinalitet 1..1)."
* personId ^definition = "Patientens personnummer, för den patient som tidbokningen gäller. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1)."
* personId.root ^definition = "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.personIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** personIdExtension Heter extension i schemat."
