// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetBlocksForPatient v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: GetBlocksForPatientRequest
Id: getblocksforpatient-request
Title: "GetBlocksForPatient — Request"
Description: "Logisk modell för requestparametrar i GetBlocksForPatient."
Characteristics: #can-be-target

* patientId 1..1 string "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas."
* careProviderId 1..1 string "HSA-id på den vårdgivare vars spärrar skall hämtas."
* createdOnOrAfter 0..1 dateTime "Startdatum för inkrementell hämtning."
