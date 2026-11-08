// Elementen genereras ur GetMaternityMedicalHistoryResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetMaternityMedicalHistory v2.0
// Genererad: 2026-03-19

Logical: GetMaternityMedicalHistoryRequest
Id: getmaternitymedicalhistory-request
Title: "GetMaternityMedicalHistory — Request"
Description: """
  Logisk modell för requestparametrar i GetMaternityMedicalHistory
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistory:2).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* careUnitHSAid only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMaternityMedicalHistoryRequestFieldDescriptions
