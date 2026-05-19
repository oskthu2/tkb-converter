// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetAllBlocksForPatient v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: GetAllBlocksForPatientRequest
Id: getallblocksforpatient-request
Title: "GetAllBlocksForPatient — Request"
Description: "Logisk modell för requestparametrar i GetAllBlocksForPatient."
Characteristics: #can-be-target

* patientId 1..1 string "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas."
* careProviderIds 0..* string "HSA-id på de vårdgivare vars spärrar skall hämtas. Om utelämnat hämtas alla."
* createdOnOrAfter 0..1 dateTime "Startdatum för inkrementell hämtning."
