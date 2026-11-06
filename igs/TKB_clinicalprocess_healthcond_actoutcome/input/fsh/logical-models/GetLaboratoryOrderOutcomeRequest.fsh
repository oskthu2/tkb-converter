// Elementen genereras ur GetLaboratoryOrderOutcomeResponder_4.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetLaboratoryOrderOutcome v4.2
// Genererad: 2026-03-19

Logical: GetLaboratoryOrderOutcomeRequest
Id: getlaboratoryorderoutcome-request
Title: "GetLaboratoryOrderOutcome — Request"
Description: """
  Logisk modell för requestparametrar i GetLaboratoryOrderOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).
  Representerar de sökparametrar som tjänstekonsumenten skickar in.
"""
Characteristics: #can-be-target

* ^version = "4.2"
* careUnitHSAId 0..* IIType "careUnitHSAId" "careUnitHSAId"
* careGiverHSAId 0..* IIType "careGiverHSAId" "careGiverHSAId"
* patientId 1..1 IIType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 IIType "sourceSystemHSAId" "sourceSystemHSAId"
* specimenIdentifier 0..* IIType "specimenIdentifier" "specimenIdentifier"
* referralIdentifier 0..* IIType "referralIdentifier" "referralIdentifier"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLaboratoryOrderOutcomeRequestFieldDescriptions
