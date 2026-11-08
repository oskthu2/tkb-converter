// Elementen genereras ur GetLaboratoryOrderOutcomeResponder_3.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetLaboratoryOrderOutcome 3.1 (avsnitt 7.3)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetLaboratoryOrderOutcomeRequest
Id: getlaboratoryorderoutcome-request
Title: "GetLaboratoryOrderOutcome — Begäran"
Description: """
  Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3).
  Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.3.
"""
Characteristics: #can-be-target

* ^version = "3.1"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetLaboratoryOrderOutcomeRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getlaboratoryorderoutcome-request-sourcesystem-if-carecontact

Invariant: getlaboratoryorderoutcome-request-sourcesystem-if-carecontact
Description: "sourceSystemHSAId ska anges om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
