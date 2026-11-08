// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAccessLogsForPatientRequestFieldDescriptions
* patientId ^definition = "Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:auditing:log:2:IIType`, kardinalitet 1..1)."
* fromDate ^definition = "Obligatoriskt startdatum för att begränsa rapportuttaget."
* fromDate ^comment = "TKB-fält: `fromDate` (`xs:DateTime`, kardinalitet 1..1)."
* toDate ^definition = "Obligatoriskt slutdatum för att begränsa rapportuttaget."
* toDate ^comment = "TKB-fält: `toDate` (`xs:DateTime`, kardinalitet 1..1)."
* queuedReportId ^definition = "Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts."
* queuedReportId ^comment = "TKB-fält: `queuedReportId*` (`urn:riv:informationsecurity:auditing:log:2:Id`, kardinalitet 0..1)."
