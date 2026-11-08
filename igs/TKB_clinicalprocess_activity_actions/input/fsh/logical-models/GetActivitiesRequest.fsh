// Elementen genereras ur GetActivitiesResponder_1.3.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activity:actions v1.3
// Kontrakt: GetActivities v1.3 — Request
// Genererad: 2026-05-18

Logical: GetActivitiesRequest
Id: getactivities-request
Title: "GetActivities — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetActivities
  (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).
  Den enda obligatoriska sökparametern är patientId.
  Övriga parametrar är valfria filter (se Regel 1.1).
"""
Characteristics: #can-be-target

* ^version = "1.3"
* patientId 1..1 IIType "patientId" "patientId"
* time 0..1 TimePeriodType "time" "time"
* activityCode 0..* Base "CVType" "activityCode"
* activityCode.code 1..1 string "code" "code"
* activityCode.codeSystem 1..1 string "codeSystem" "codeSystem"
* activityCode.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* activityCode.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* activityCode.displayName 0..1 string "displayName" "displayName"
* activityId 0..* IIType "activityId" "activityId"
* careGiverId 0..1 IIType "careGiverId" "careGiverId"
* careUnitId 0..1 IIType "careUnitId" "careUnitId"
* interactionAgreementId 1..1 string "interactionAgreementId" "interactionAgreementId"
* interactionAgreementId only UUIDType
* sourceSystemId 0..1 IIType "sourceSystemId" "sourceSystemId"
* relation 0..* Base "RelationFilterType" "relation"
* relation.id 0..1 IIType "id" "id"
* relation.typeCode 0..1 Base "CVType" "typeCode"
* relation.typeCode.code 1..1 string "code" "code"
* relation.typeCode.codeSystem 1..1 string "codeSystem" "codeSystem"
* relation.typeCode.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* relation.typeCode.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* relation.typeCode.displayName 0..1 string "displayName" "displayName"
* relation.referredInformationType 1..1 string "referredInformationType" "referredInformationType"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetActivitiesRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* relation obeys getactivities-request-relation-type-or-id

Invariant: getactivities-request-relation-type-or-id
Description: "Minst en av typeCode och relationId ska anges i ett relationsfilter (RelationFilterType)."
Expression: "typeCode.exists() or id.exists()"
Severity: #error
