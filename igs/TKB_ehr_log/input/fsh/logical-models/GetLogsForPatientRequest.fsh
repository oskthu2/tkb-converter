// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetLogsForPatient v1.0 — Request
// Genererad: 2026-04-09

Logical: GetLogsForPatientRequest
Id: getlogsforpatient-request
Title: "GetLogsForPatient — Request"
Description: "Logisk modell för requestparametrar i GetLogsForPatient."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "Vårdgivare som är ägare till loggposter"
* patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* careUnitId 0..1 Identifier "HSA-id för specifik vårdenhet (valfritt filter)"
* fromDate 1..1 dateTime "Obligatoriskt startdatum för rapportuttaget"
* toDate 1..1 dateTime "Obligatoriskt slutdatum för rapportuttaget"
* queuedReportId 0..1 string "Id på en pågående rapport (UUID, 36 tecken)"
