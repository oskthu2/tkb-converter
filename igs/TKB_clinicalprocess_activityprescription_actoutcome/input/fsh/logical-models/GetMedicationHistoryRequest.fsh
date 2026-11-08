// Elementen genereras ur GetMedicationHistoryResponder_2.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:actoutcome v2.2.1
// Kontrakt: GetMedicationHistory v2.2 — Request
// Genererad: 2026-03-19

Logical: GetMedicationHistoryRequest
Id: getmedicationhistory-request
Title: "GetMedicationHistory — Request"
Description: "Logisk modell för requestparametrar i GetMedicationHistory."
Characteristics: #can-be-target

* ^version = "2.2"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* careGiverHSAId 0..* string "careGiverHSAId" "careGiverHSAId"
* careGiverHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"
* prescriptionChainId 0..1 IIType "prescriptionChainId" "prescriptionChainId"
* prescriptionStatus 0..1 code "prescriptionStatus" "prescriptionStatus Tillåtna värden: Active, Inactive."
* prescriptionStatus from PrescriptionStatusVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMedicationHistoryRequestFieldDescriptions
