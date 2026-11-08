// Elementen genereras ur GetMaternityMedicalHistoryResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetMaternityMedicalHistory 2.0 (avsnitt 7.2)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetMaternityMedicalHistoryRequest
Id: getmaternitymedicalhistory-request
Title: "GetMaternityMedicalHistory — Begäran"
Description: """
  Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).
  Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* careUnitHSAid only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMaternityMedicalHistoryRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getmaternitymedicalhistory-request-sourcesystem-if-carecontact

Invariant: getmaternitymedicalhistory-request-sourcesystem-if-carecontact
Description: "sourceSystemHSAId ska anges om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
