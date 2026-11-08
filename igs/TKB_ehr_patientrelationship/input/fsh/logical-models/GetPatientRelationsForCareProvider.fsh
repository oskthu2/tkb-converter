// Elementen genereras ur GetPatientRelationsForCareProviderResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetPatientRelationsForCareProvider v1.0
// Namespace: urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1
// Genererad: 2026-05-19

Logical: GetPatientRelationsForCareProvider
Id: getpatientrelationsforcareprovider
Title: "GetPatientRelationsForCareProvider"
Description: """
  Logisk modell för tjänstekontraktet GetPatientRelationsForCareProvider
  (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1).
  Representerar responsens informationsstruktur — alla giltiga patientrelationer för en vårdgivare,
  med stöd för paginering via HasMore/MoreOnOrAfter.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetAllPatientRelationsResultType 1..1 Base "GetAllPatientRelationsResultType" "GetAllPatientRelationsResultType"
* GetAllPatientRelationsResultType.Result 1..1 Base "ResultType" "Result"
* GetAllPatientRelationsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetAllPatientRelationsResultType.Result.ResultCode from ResultCodeVS (required)
* GetAllPatientRelationsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetAllPatientRelationsResultType.MoreOnOrAfter 1..1 dateTime "MoreOnOrAfter" "MoreOnOrAfter"
* GetAllPatientRelationsResultType.HasMore 1..1 boolean "HasMore" "HasMore"
* GetAllPatientRelationsResultType.PatientRelations 0..* Base "PatientRelationType" "PatientRelations"
* GetAllPatientRelationsResultType.PatientRelations.PatientRelationId 1..1 string "PatientRelationId" "PatientRelationId"
* GetAllPatientRelationsResultType.PatientRelations.PatientId 1..1 string "PatientId" "PatientId"
* GetAllPatientRelationsResultType.PatientRelations.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* GetAllPatientRelationsResultType.PatientRelations.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* GetAllPatientRelationsResultType.PatientRelations.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetAllPatientRelationsResultType.PatientRelations.StartDate 1..1 dateTime "StartDate" "StartDate"
* GetAllPatientRelationsResultType.PatientRelations.EndDate 1..1 dateTime "EndDate" "EndDate"
* GetAllPatientRelationsResultType.PatientRelations.OwnerId 0..1 string "OwnerId" "OwnerId"
* GetAllPatientRelationsResultType.CancelledPatientRelations 0..* Base "CancelledPatientRelationType" "CancelledPatientRelations"
* GetAllPatientRelationsResultType.CancelledPatientRelations.PatientRelationId 1..1 string "PatientRelationId" "PatientRelationId"
* GetAllPatientRelationsResultType.CancelledPatientRelations.CancellationDate 1..1 dateTime "CancellationDate" "CancellationDate"
