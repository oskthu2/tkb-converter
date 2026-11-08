// Elementen genereras ur GetDiagnosisResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetDiagnosis v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (begäran), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08

Logical: GetDiagnosisRequest
Id: getdiagnosis-request
Title: "GetDiagnosis — Request"
Description: "Logisk modell för begäran i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18."
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
* insert GetDiagnosisRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getdiagnosis-request-carecontact-requires-sourcesystem

Invariant: getdiagnosis-request-carecontact-requires-sourcesystem
Description: "sourceSystemHSAId ska anges om careContactId angivits (TKB, fältregler för begäran)."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
