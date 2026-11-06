// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: MakeAppointmentRequestFieldDescriptions
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
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 1..1)."
* personId.root ^definition = "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.personIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** personIdExtension Heter extension i schemat."
* timeslotId ^definition = "Unik identifierare för tidsluckan som ska bokas. Ska uttryckas som uuid (universally unique identifier)."
* timeslotId ^comment = "TKB-fält: `timeslotId` (`uuidType`, kardinalitet 1..1)."
* reasonText ^definition = "Patientens anledning till bokningen, uttryckt som fritext"
* reasonText ^comment = "TKB-fält: `reasonText` (`string`, kardinalitet 0..1)."
* reasonCode ^definition = "Patientens anledning till bokningen, uttryckt som anledningskod. Möjliga val som ges till patienten bestäms av tidbokningssystemet. Tidbokningssystemet ges möjlighet att erbjuda lista med möjliga val per tidstyp. Tidbokningssystemet bestämmer själva koder och kodsystem att använda"
* reasonCode ^comment = "TKB-fält: `reasonCode` (`CVType`, kardinalitet 0..1)."
* reasonCode.cvCode ^definition = "Kod för anledningen till bokningen"
* reasonCode.cvCode ^comment = "TKB-fält: `reasonCode.code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* reasonCode.codeSystem ^definition = "Definierar vilket kodsystem som fältet code tillhör."
* reasonCode.codeSystem ^comment = "TKB-fält: `reasonCode.codeSystem` (`string`, kardinalitet 1..1)."
* reasonCode.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* reasonCode.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* reasonCode.displayName ^definition = "Den text som beskriver koden och ska visas till invånaren"
* reasonCode.displayName ^comment = "TKB-fält: `reasonCode.displayName` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* reasonCode.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
