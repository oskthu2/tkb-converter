// Elementen genereras ur GetImagingOutcomeResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetImagingOutcome v1.0
// Genererad: 2026-03-19

Logical: GetImagingOutcomeRequest
Id: getimagingoutcome-request
Title: "GetImagingOutcome — Request"
Description: """
  Logisk modell för requestparametrar i GetImagingOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetImagingOutcomeRequestFieldDescriptions
