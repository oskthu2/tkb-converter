// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLogsRequestFieldDescriptions
* careProviderId ^definition = "Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:auditing:log:2:HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Patientens personnummer, samordningsnummer, alternativt reserv-nummer som vårdgivare haft åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:auditing:log:2:IIType`, kardinalitet 0..1).

**Modellanteckning:** En universellt unik identifierare."
* patientId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* patientId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* userId ^definition = "Medarbetare som haft åtkomst."
* userId ^comment = "TKB-fält: `userId` (`urn:riv:informationsecurity:auditing:log:2:HsaId`, kardinalitet 0..1)."
* fromDate ^definition = "Obligatoriskt startdatum för att begränsa rapportuttaget."
* fromDate ^comment = "TKB-fält: `fromDate` (`xs:DateTime`, kardinalitet 1..1)."
* toDate ^definition = "Obligatoriskt slutdatum för att begränsa rapportuttaget."
* toDate ^comment = "TKB-fält: `toDate` (`xs:DateTime`, kardinalitet 1..1)."
* careUnitId ^definition = "Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`urn:riv:informationsecurity:auditing:log:2:HsaId`, kardinalitet 0..1)."
* queuedReportId ^definition = "Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts."
* queuedReportId ^comment = "TKB-fält: `queuedReportId*` (`urn:riv:informationsecurity:auditing:log:2:Id`, kardinalitet 0..1)."
