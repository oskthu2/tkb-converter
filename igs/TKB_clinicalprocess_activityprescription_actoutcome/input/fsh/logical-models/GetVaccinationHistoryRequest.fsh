// Elementen genereras ur GetVaccinationHistoryResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:actoutcome v2.2.1
// Kontrakt: GetVaccinationHistory v2.0 — Request
// Genererad: 2026-03-19

Logical: GetVaccinationHistoryRequest
Id: getvaccinationhistory-request
Title: "GetVaccinationHistory — Request"
Description: "Logisk modell för requestparametrar i GetVaccinationHistory."
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* careUnitHSAid only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAid 0..1 string "sourceSystemHSAid" "sourceSystemHSAid"
* sourceSystemHSAid only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetVaccinationHistoryRequestFieldDescriptions
