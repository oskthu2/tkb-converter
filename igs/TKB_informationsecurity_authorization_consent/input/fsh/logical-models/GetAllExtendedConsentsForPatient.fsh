// Elementen genereras ur GetAllExtendedConsentsForPatientResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetAllExtendedConsentsForPatient v1.0
// Genererad: 2026-09-26

Logical: GetAllExtendedConsentsForPatient
Id: getallextendedconsentsforpatient
Title: "GetAllExtendedConsentsForPatient — Response"
Description: """
  Logisk modell för svaret i GetAllExtendedConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* getExtendedConsentsResult 1..1 Base "GetExtendedConsentsResultType" "getExtendedConsentsResult"
* getExtendedConsentsResult.result 1..1 Base "ResultType" "result"
* getExtendedConsentsResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* getExtendedConsentsResult.result.resultCode from ResultCodeVS (required)
* getExtendedConsentsResult.result.resultText 0..1 string "resultText" "resultText"
* getExtendedConsentsResult.pdlAssertions 0..* Base "ExtendedPDLAssertionType" "pdlAssertions"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion 1..1 Base "PDLAssertionType" "pDLAssertion"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionId 1..1 string "assertionId" "assertionId"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionType 1..1 code "assertionType" "assertionType Tillåtna värden: Consent, Emergency."
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionType from AssertionTypeVS (required)
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.scope 1..1 code "scope" "scope Tillåtna värden: NationalLevel."
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.scope from ScopeVS (required)
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.careProviderId 1..1 string "careProviderId" "careProviderId"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.careUnitId 1..1 string "careUnitId" "careUnitId"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.employeeId 0..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.startDate 1..1 dateTime "startDate" "startDate"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.endDate 0..1 dateTime "endDate" "endDate"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.ownerId 0..1 string "ownerId" "ownerId"
* getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId 1..1 IIType "patientId" "patientId"
* getExtendedConsentsResult.pdlAssertions.representedBy 0..1 IIType "representedBy" "representedBy"
* getExtendedConsentsResult.pdlAssertions.registrationInfo 1..1 Base "ActionType" "registrationInfo"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.requestDate 1..1 dateTime "requestDate" "requestDate"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy 1..1 Base "ActorType" "requestedBy"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy 1..1 Base "ActorType" "registeredBy"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* getExtendedConsentsResult.pdlAssertions.registrationInfo.reasonText 0..1 string "reasonText" "reasonText"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo 0..1 Base "ActionType" "cancellationInfo"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestDate 1..1 dateTime "requestDate" "requestDate"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy 1..1 Base "ActorType" "requestedBy"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy 1..1 Base "ActorType" "registeredBy"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* getExtendedConsentsResult.pdlAssertions.cancellationInfo.reasonText 0..1 string "reasonText" "reasonText"
* getExtendedConsentsResult.pdlAssertions.deletionInfo 0..1 Base "ActionType" "deletionInfo"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.requestDate 1..1 dateTime "requestDate" "requestDate"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy 1..1 Base "ActorType" "requestedBy"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy 1..1 Base "ActorType" "registeredBy"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* getExtendedConsentsResult.pdlAssertions.deletionInfo.reasonText 0..1 string "reasonText" "reasonText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAllExtendedConsentsForPatientFieldDescriptions
