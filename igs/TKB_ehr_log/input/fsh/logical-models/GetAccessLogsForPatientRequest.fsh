// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetAccessLogsForPatient v1.1 — Request
// Genererad: 2026-04-09

Logical: GetAccessLogsForPatientRequest
Id: getaccesslogsforpatient-request
Title: "GetAccessLogsForPatient — Request"
Description: """
  Logisk modell för requestparametrar i GetAccessLogsForPatient.
  Obs: queuedReportId ska INTE användas när aggregerande tjänst anropas.
"""
Characteristics: #can-be-target

* patientId 1..1 Identifier "Patientens personnummer, samordningsnummer eller reservnummer"
* fromDate 1..1 dateTime "Obligatoriskt startdatum för rapportuttaget"
* toDate 1..1 dateTime "Obligatoriskt slutdatum för rapportuttaget"
* queuedReportId 0..1 string "Id på en pågående rapport (UUID) — ej vid aggregerande anrop"
