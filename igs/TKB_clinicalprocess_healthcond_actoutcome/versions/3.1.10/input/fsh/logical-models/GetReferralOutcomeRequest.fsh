// Elementen genereras ur GetReferralOutcomeResponder_3.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetReferralOutcome 3.1 (avsnitt 7.1)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetReferralOutcomeRequest
Id: getreferraloutcome-request
Title: "GetReferralOutcome — Begäran"
Description: """
  Logisk modell för tjänstekontraktet GetReferralOutcome 3.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).
  Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.1.
"""
Characteristics: #can-be-target

* ^version = "3.1"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* careUnitHSAid only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetReferralOutcomeRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getreferraloutcome-request-sourcesystem-if-carecontact

Invariant: getreferraloutcome-request-sourcesystem-if-carecontact
Description: "sourceSystemHSAId ska anges om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
