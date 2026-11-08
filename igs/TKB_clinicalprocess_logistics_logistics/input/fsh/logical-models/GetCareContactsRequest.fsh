// Elementen genereras ur GetCareContactsResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCareContacts v3.0 — Request
// Genererad: 2026-03-19

Logical: GetCareContactsRequest
Id: getcarecontacts-request
Title: "GetCareContacts — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetCareContacts
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).
  Representerar GetCareContactsType i GetCareContactsResponder_3.0.xsd.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* careGiverHSAId 0..* string "careGiverHSAId" "careGiverHSAId"
* careGiverHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* datePeriod 0..1 DatePeriodType "datePeriod" "datePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareContactsRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getcarecontacts-sourcesystemhsaid-required

Invariant: getcarecontacts-sourcesystemhsaid-required
Description: "sourceSystemHSAId ska anges när careContactId är angivet (TKB fältregel för sourceSystemHSAId). Regelns andra villkor, begäran på reservnummer, går inte att avgöra ur meddelandet och kontrolleras inte."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
