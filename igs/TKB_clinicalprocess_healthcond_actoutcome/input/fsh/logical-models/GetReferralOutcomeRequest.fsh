// Elementen genereras ur GetReferralOutcomeResponder_3.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome v4.2.2
// Kontrakt: GetReferralOutcome v3.2
// Genererad: 2026-03-19

Logical: GetReferralOutcomeRequest
Id: getreferraloutcome-request
Title: "GetReferralOutcome — Request"
Description: """
  Logisk modell för requestparametrar i GetReferralOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).
"""
Characteristics: #can-be-target

* ^version = "3.2"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* careUnitHSAid only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetReferralOutcomeRequestFieldDescriptions
