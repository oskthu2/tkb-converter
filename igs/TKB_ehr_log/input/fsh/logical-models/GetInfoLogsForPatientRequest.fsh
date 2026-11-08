// Elementen genereras ur GetInfoLogsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:log v1.2.3
// Kontrakt: GetInfoLogsForPatient v1.0 — Request
// Genererad: 2026-04-09

Logical: GetInfoLogsForPatientRequest
Id: getinfologsforpatient-request
Title: "GetInfoLogsForPatient — Request"
Description: "Logisk modell för requestparametrar i GetInfoLogsForPatient."
Characteristics: #can-be-target

* ^version = "1.0"
* careProviderId 1..1 Identifier "Vårdgivare som är informationsägare (HSA-id)"
* patientId 1..1 Identifier "Patientens personnummer, samordningsnummer eller reservnummer"
* fromDate 1..1 dateTime "Obligatoriskt startdatum för rapportuttaget"
* toDate 1..1 dateTime "Obligatoriskt slutdatum för rapportuttaget"
* queuedReportId 0..1 string "Id på en pågående rapport (UUID, 36 tecken)"

* insert GetInfoLogsForPatientRequestFieldDescriptions
