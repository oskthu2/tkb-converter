// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLogsForPatientRequestFieldDescriptions
* careProviderId ^definition = "Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`log:HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Patientens personnummer, samordningsnummer, alternativt reservnummer som vårdgivare haft åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`log:PersonId`, kardinalitet 1..1)."
* careUnitId ^definition = "Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`log:HsaId`, kardinalitet 0..1)."
* fromDate ^definition = "Obligatoriskt startdatum för att begränsa rapportuttaget."
* fromDate ^comment = "TKB-fält: `fromDate` (`xs:dateTime`, kardinalitet 1..1)."
* toDate ^definition = "Obligatoriskt slutdatum för att begränsa rapportuttaget."
* toDate ^comment = "TKB-fält: `toDate` (`xs:dateTime`, kardinalitet 1..1)."
* queuedReportId ^definition = "Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts."
* queuedReportId ^comment = "TKB-fält: `queuedReportId` (`log:Id`, kardinalitet 0..1)."
