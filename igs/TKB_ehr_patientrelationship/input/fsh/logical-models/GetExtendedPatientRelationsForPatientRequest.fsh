// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetExtendedPatientRelationsForPatient v1.0 — Request
// Genererad: 2026-05-19

Logical: GetExtendedPatientRelationsForPatientRequest
Id: getextendedpatientrelationsforpatient-request
Title: "GetExtendedPatientRelationsForPatient — Request"
Description: "Logisk modell för requestparametrar i GetExtendedPatientRelationsForPatient."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "HSA-id på den vårdgivare vars patientrelationer skall hämtas"
* patientId 1..1 string "Patientens personnummer alternativt samordningsnummer (max 12 tecken)"
* getCancelledFlag 1..1 boolean "Flagga som avgör om ogiltiga patientrelationer (makulerade, återkallade, utgångna) skall returneras"
