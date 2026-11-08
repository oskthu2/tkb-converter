// Elementen genereras ur GetObservationsResponder_1.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:basic 1.2.3 (Bitbucket-tagg 1.2.3, TKB-dokument version 1.2.1)
// Kontrakt: GetObservations v1.2 (GetObservationsResponder_1.2.xsd)
// Genererad: 2026-10-08

Logical: GetObservationsRequest
Id: getobservations-request
Title: "GetObservations — Request"
Description: """
  Logisk modell för begäran i tjänstekontraktet GetObservations 1.2
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservations).
  Den enda sökparametern som explicit behöver anges är patientId (övrig regel 1.1).
  En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent.
"""
Characteristics: #can-be-target

* ^version = "1.2"
* patientId 1..1 IIType "patientId" "patientId"
* time 0..1 TimePeriodType "time" "time"
* observationType 0..* Base "CVType" "observationType"
* observationType.code 1..1 string "code" "code"
* observationType.codeSystem 1..1 string "codeSystem" "codeSystem"
* observationType.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* observationType.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* observationType.displayName 0..1 string "displayName" "displayName"
* observationId 0..* IIType "observationId" "observationId"
* careGiverId 0..1 IIType "careGiverId" "careGiverId"
* careUnitId 0..1 IIType "careUnitId" "careUnitId"
* interactionAgreementId 1..1 string "interactionAgreementId" "interactionAgreementId"
* interactionAgreementId only UUIDType
* sourceSystemHSAId 0..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* sourceSystemHSAId only HSAIdType
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
* insert GetObservationsRequestFieldDescriptions
