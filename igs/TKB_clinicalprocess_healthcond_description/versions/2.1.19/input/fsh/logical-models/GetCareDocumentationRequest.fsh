// Elementen genereras ur GetCareDocumentationResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetCareDocumentation v2.1
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (begäran), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08

Logical: GetCareDocumentationRequest
Id: getcaredocumentation-request
Title: "GetCareDocumentation — Request"
Description: "Logisk modell för begäran i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18."
Characteristics: #can-be-target

* ^version = "2.1"
* careUnitHSAid 0..* string "careUnitHSAid" "careUnitHSAid"
* careUnitHSAid only HSAIdType
* patientId 1..1 PersonIdType "patientId" "patientId"
* timePeriod 0..1 DatePeriodType "timePeriod" "timePeriod"
* sourceSystemHSAid 0..1 string "sourceSystemHSAid" "sourceSystemHSAid"
* sourceSystemHSAid only HSAIdType
* careContactId 0..* string "careContactId" "careContactId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareDocumentationRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getcaredocumentation-request-carecontact-requires-sourcesystem

Invariant: getcaredocumentation-request-carecontact-requires-sourcesystem
Description: "sourceSystemHSAId ska anges om careContactId angivits (TKB, fältregler för begäran)."
Expression: "careContactId.exists() implies sourceSystemHSAid.exists()"
Severity: #error
