// Elementen genereras ur GetCareContactsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:logistics:logistics 2.0.7 (Bitbucket-tagg 2.0.7)
// Kontrakt: GetCareContacts v2.0 — Request (GetCareContactsType i GetCareContactsResponder_2.0.xsd)
// Genererad: 2026-10-08

Logical: GetCareContactsRequest
Id: getcarecontacts-request
Title: "GetCareContacts — Request"
Description: """
  Logisk modell för begäran i tjänstekontraktet GetCareContacts 2.0
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).
  Representerar GetCareContactsType i GetCareContactsResponder_2.0.xsd.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAId 0..* string "careUnitHSAId" "careUnitHSAId"
* careUnitHSAId only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareContactsRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getcarecontacts-request-sourcesystem-when-id

Invariant: getcarecontacts-request-sourcesystem-when-id
Description: "sourceSystemHSAId är tvingande om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
