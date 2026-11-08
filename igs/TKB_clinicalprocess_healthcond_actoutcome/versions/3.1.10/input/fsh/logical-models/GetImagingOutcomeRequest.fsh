// Elementen genereras ur GetImagingOutcomeResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetImagingOutcome 1.0 (avsnitt 7.4)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetImagingOutcomeRequest
Id: getimagingoutcome-request
Title: "GetImagingOutcome — Begäran"
Description: """
  Logisk modell för tjänstekontraktet GetImagingOutcome 1.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1).
  Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.4.
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

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getimagingoutcome-request-sourcesystem-if-carecontact

Invariant: getimagingoutcome-request-sourcesystem-if-carecontact
Description: "sourceSystemHSAId ska anges om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
