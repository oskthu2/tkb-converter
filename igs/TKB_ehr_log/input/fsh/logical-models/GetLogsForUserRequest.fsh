// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetLogsForUser v1.1 — Request
// Genererad: 2026-04-09

Logical: GetLogsForUserRequest
Id: getlogsforuser-request
Title: "GetLogsForUser — Request"
Description: "Logisk modell för requestparametrar i GetLogsForUser."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "Vårdgivare som är ägare till loggposter"
* userId 1..1 Identifier "Medarbetare vars åtkomster ska hämtas (HSA-id)"
* fromDate 1..1 dateTime "Obligatoriskt startdatum för rapportuttaget"
* toDate 1..1 dateTime "Obligatoriskt slutdatum för rapportuttaget"
* queuedReportId 0..1 string "Id på en pågående rapport (UUID, 36 tecken)"
* careUnitId 0..1 Identifier "HSA-id för specifik vårdenhet (valfritt filter)"
