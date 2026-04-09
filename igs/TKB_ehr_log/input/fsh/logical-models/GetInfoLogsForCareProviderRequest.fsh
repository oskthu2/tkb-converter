// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetInfoLogsForCareProvider v1.0 — Request
// Genererad: 2026-04-09

Logical: GetInfoLogsForCareProviderRequest
Id: getinfologsforcareprovider-request
Title: "GetInfoLogsForCareProvider — Request"
Description: "Logisk modell för requestparametrar i GetInfoLogsForCareProvider."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "Vårdgivare som är informationsägare (HSA-id)"
* fromDate 1..1 dateTime "Obligatoriskt startdatum för rapportuttaget"
* toDate 1..1 dateTime "Obligatoriskt slutdatum för rapportuttaget"
* queuedReportId 0..1 string "Id på en pågående rapport (UUID, 36 tecken)"
