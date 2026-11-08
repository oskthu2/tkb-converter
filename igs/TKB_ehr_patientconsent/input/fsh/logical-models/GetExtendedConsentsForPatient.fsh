// Elementen genereras ur GetExtendedConsentsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetExtendedConsentsForPatient v1.0
// RIV-TA: urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1
// Genererad: 2026-04-22

Logical: GetExtendedConsentsForPatient
Id: getextendedconsentsforpatient
Title: "GetExtendedConsentsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetExtendedConsentsForPatient
  (RIV-TA urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som läser registrerade samtyckesintyg för en viss patient med utökad information.
  Returnerar ExtendedPDLAssertion som innehåller registrerings-, återkallnings- och makuleringsinformation.
  Det är valbart om ogiltiga (makulerade, återkallade och utgångna) samtyckesintyg skall returneras.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* GetExtendedConsentsResultType 1..1 Base "GetExtendedConsentsResultType" "GetExtendedConsentsResultType"
* GetExtendedConsentsResultType.Result 1..1 Base "ResultType" "Result"
* GetExtendedConsentsResultType.Result.ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* GetExtendedConsentsResultType.Result.ResultCode from ResultCodeVS (required)
* GetExtendedConsentsResultType.Result.ResultText 1..1 string "ResultText" "ResultText"
* GetExtendedConsentsResultType.PdlAssertions 0..* Base "ExtendedPDLAssertionType" "PdlAssertions"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion 1..1 Base "PDLAssertionType" "PDLAssertion"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.AssertionId 1..1 string "AssertionId" "AssertionId"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.AssertionType 1..1 code "AssertionType" "AssertionType Tillåtna värden: Consent, Emergency."
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.AssertionType from AssertionTypeVS (required)
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.Scope 1..1 code "Scope" "Scope Tillåtna värden: NationalLevel."
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.Scope from ScopeVS (required)
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.PatientId 1..1 string "PatientId" "PatientId"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.CareProviderId 1..1 string "CareProviderId" "CareProviderId"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.CareUnitId 1..1 string "CareUnitId" "CareUnitId"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.EmployeeId 0..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.StartDate 1..1 dateTime "StartDate" "StartDate"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.EndDate 0..1 dateTime "EndDate" "EndDate"
* GetExtendedConsentsResultType.PdlAssertions.PDLAssertion.OwnerId 0..1 string "OwnerId" "OwnerId"
* GetExtendedConsentsResultType.PdlAssertions.RepresentedBy 0..1 string "RepresentedBy" "RepresentedBy"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo 1..1 Base "ActionType" "RegistrationInfo"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RequestDate 1..1 dateTime "RequestDate" "RequestDate"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RequestedBy 1..1 Base "ActorType" "RequestedBy"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RequestedBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RequestedBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RequestedBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RegistrationDate 1..1 dateTime "RegistrationDate" "RegistrationDate"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RegisteredBy 1..1 Base "ActorType" "RegisteredBy"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RegisteredBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RegisteredBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.RegisteredBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedConsentsResultType.PdlAssertions.RegistrationInfo.ReasonText 0..1 string "ReasonText" "ReasonText"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo 0..1 Base "ActionType" "CancellationInfo"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RequestDate 1..1 dateTime "RequestDate" "RequestDate"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RequestedBy 1..1 Base "ActorType" "RequestedBy"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RequestedBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RequestedBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RequestedBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RegistrationDate 1..1 dateTime "RegistrationDate" "RegistrationDate"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RegisteredBy 1..1 Base "ActorType" "RegisteredBy"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RegisteredBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RegisteredBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.RegisteredBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedConsentsResultType.PdlAssertions.CancellationInfo.ReasonText 0..1 string "ReasonText" "ReasonText"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo 0..1 Base "ActionType" "DeletionInfo"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RequestDate 1..1 dateTime "RequestDate" "RequestDate"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RequestedBy 1..1 Base "ActorType" "RequestedBy"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RequestedBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RequestedBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RequestedBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RegistrationDate 1..1 dateTime "RegistrationDate" "RegistrationDate"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RegisteredBy 1..1 Base "ActorType" "RegisteredBy"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RegisteredBy.EmployeeId 1..1 string "EmployeeId" "EmployeeId"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RegisteredBy.AssignmentId 0..1 string "AssignmentId" "AssignmentId"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.RegisteredBy.AssignmentName 0..1 string "AssignmentName" "AssignmentName"
* GetExtendedConsentsResultType.PdlAssertions.DeletionInfo.ReasonText 0..1 string "ReasonText" "ReasonText"
