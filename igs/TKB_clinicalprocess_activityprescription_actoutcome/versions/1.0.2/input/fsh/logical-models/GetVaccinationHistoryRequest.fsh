// Elementen genereras ur GetVaccinationHistoryResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:actoutcome 1.0 (Bitbucket-tagg 1.0.2)
// Kontrakt: GetVaccinationHistory v1.0 — Request
// Källa: GetVaccinationHistoryResponder_1.0.xsd (GetVaccinationHistoryType)
// Genererad: 2026-10-08

Logical: GetVaccinationHistoryRequest
Id: getvaccinationhistory-request
Title: "GetVaccinationHistory — Request"
Description: """
  Logisk modell för begäran i tjänstekontraktet GetVaccinationHistory 1.0
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).
  Elementnamnen följer XML-schemat GetVaccinationHistoryResponder_1.0.xsd.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAid 0..1 string "sourceSystemHSAid" "sourceSystemHSAid"
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetVaccinationHistoryRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getvaccinationhistory-request-sourcesystem
* timePeriod obeys getvaccinationhistory-request-timeperiod

Invariant: getvaccinationhistory-request-sourcesystem
Description: "sourceSystemHSAid är tvingande om careContactId angivits (TKB 1.0, fältregler för sourceSystemHSAId)"
Expression: "careContactId.exists() implies sourceSystemHSAid.exists()"
Severity: #error

Invariant: getvaccinationhistory-request-timeperiod
Description: "Minst ett av start och end ska anges (DatePeriodType)"
Expression: "start.exists() or end.exists()"
Severity: #error
