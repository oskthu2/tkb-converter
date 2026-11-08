// Elementen genereras ur GetCarePlansResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCarePlans v2.0 — Request
// Genererad: 2026-03-19

Logical: GetCarePlansRequest
Id: getcareaplans-request
Title: "GetCarePlans — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).
  Representerar GetCarePlansType i GetCarePlansResponder_2.0.xsd.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCarePlansRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getcareplans-sourcesystemhsaid-required

Invariant: getcareplans-sourcesystemhsaid-required
Description: "sourceSystemHSAId ska anges när careContactId är angivet (TKB fältregel för sourceSystemHSAId). Regelns andra villkor, begäran på reservnummer, går inte att avgöra ur meddelandet och kontrolleras inte."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
