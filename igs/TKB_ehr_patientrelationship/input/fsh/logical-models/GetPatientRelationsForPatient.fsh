// Elementen genereras ur GetPatientRelationsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetPatientRelationsForPatient v1.0
// Namespace: urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1
// Genererad: 2026-05-19

Logical: GetPatientRelationsForPatient
Id: getpatientrelationsforpatient
Title: "GetPatientRelationsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetPatientRelationsForPatient
  (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1).
  Representerar responsens informationsstruktur — lista med giltiga patientrelationer för en patient.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetPatientRelationsResultType 1..1 Base "GetPatientRelationsResultType" "GetPatientRelationsResultType"
* GetPatientRelationsResultType.Result 1..1 Base "ResultType" "Result"
* GetPatientRelationsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetPatientRelationsResultType.Result.ResultCode from ResultCodeVS (required)
* GetPatientRelationsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetPatientRelationsResultType.PatientRelations 0..* Base "PatientRelationType" "PatientRelations"
* GetPatientRelationsResultType.PatientRelations.PatientRelationId 1..1 string "PatientRelationId" "PatientRelationId"
* GetPatientRelationsResultType.PatientRelations.PatientId 1..1 string "PatientId" "PatientId"
* GetPatientRelationsResultType.PatientRelations.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* GetPatientRelationsResultType.PatientRelations.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* GetPatientRelationsResultType.PatientRelations.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetPatientRelationsResultType.PatientRelations.StartDate 1..1 dateTime "StartDate" "StartDate"
* GetPatientRelationsResultType.PatientRelations.EndDate 1..1 dateTime "EndDate" "EndDate"
* GetPatientRelationsResultType.PatientRelations.OwnerId 0..1 string "OwnerId" "OwnerId"
