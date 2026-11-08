// Elementen genereras ur GetExtendedPatientRelationsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetExtendedPatientRelationsForPatient v1.0
// Namespace: urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1
// Genererad: 2026-05-19

Logical: GetExtendedPatientRelationsForPatient
Id: getextendedpatientrelationsforpatient
Title: "GetExtendedPatientRelationsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetExtendedPatientRelationsForPatient
  (RIV-TA urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1).
  Representerar responsens informationsstruktur — patientrelationer med utökad information (registrerings-,
  återkallelse- och makuleringsinformation).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetExtendedPatientRelationResultType 1..1 Base "GetExtendedPatientRelationResultType" "GetExtendedPatientRelationResultType"
* GetExtendedPatientRelationResultType.Result 1..1 Base "ResultType" "Result"
* GetExtendedPatientRelationResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetExtendedPatientRelationResultType.Result.ResultCode from ResultCodeVS (required)
* GetExtendedPatientRelationResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations 0..* Base "ExtendedPatientRelationType" "ExtendedPatientRelations"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation 1..1 Base "PatientRelationType" "PatientRelation"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.PatientRelationId 1..1 string "PatientRelationId" "PatientRelationId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.PatientId 1..1 string "PatientId" "PatientId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.StartDate 1..1 dateTime "StartDate" "StartDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.EndDate 1..1 dateTime "EndDate" "EndDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.PatientRelation.OwnerId 0..1 string "OwnerId" "OwnerId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo 1..1 Base "ActionType" "RegistrationInfo"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestDate 1..1 dateTime "RequestDate" "RequestDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy 1..1 Base "ActorType" "RequestedBy"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RequestedBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegistrationDate 1..1 dateTime "RegistrationDate" "RegistrationDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy 1..1 Base "ActorType" "RegisteredBy"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.RegisteredBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.RegistrationInfo.ReasonText 0..1 string "ReasonText" "ReasonText"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo 0..1 Base "ActionType" "CancellationInfo"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestDate 1..1 dateTime "RequestDate" "RequestDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy 1..1 Base "ActorType" "RequestedBy"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RequestedBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegistrationDate 1..1 dateTime "RegistrationDate" "RegistrationDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy 1..1 Base "ActorType" "RegisteredBy"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.RegisteredBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.CancellationInfo.ReasonText 0..1 string "ReasonText" "ReasonText"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo 0..1 Base "ActionType" "DeletionInfo"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestDate 1..1 dateTime "RequestDate" "RequestDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy 1..1 Base "ActorType" "RequestedBy"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RequestedBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegistrationDate 1..1 dateTime "RegistrationDate" "RegistrationDate"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy 1..1 Base "ActorType" "RegisteredBy"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.RegisteredBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedPatientRelationResultType.ExtendedPatientRelations.DeletionInfo.ReasonText 0..1 string "ReasonText" "ReasonText"
