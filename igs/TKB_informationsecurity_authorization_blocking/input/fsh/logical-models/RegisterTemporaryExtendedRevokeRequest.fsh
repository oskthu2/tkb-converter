// Elementen genereras ur RegisterTemporaryExtendedRevokeResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterTemporaryExtendedRevoke v4.0
// Genererad: 2026-09-26

Logical: RegisterTemporaryExtendedRevokeRequest
Id: registertemporaryextendedrevoke-request
Title: "RegisterTemporaryExtendedRevoke — Request"
Description: """
  Logisk modell för begäran i RegisterTemporaryExtendedRevoke
  (urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryExtendedRevokeResponder:4, RegisterTemporaryExtendedRevokeType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
* blockId 1..1 string "blockId" "blockId"
* endDate 1..1 dateTime "endDate" "endDate"
* revokedForCareUnitId 1..1 string "revokedForCareUnitId" "revokedForCareUnitId"
* revokedForEmployeeId 0..1 string "revokedForEmployeeId" "revokedForEmployeeId"
* registerAction 1..1 Base "ActionType" "registerAction"
* registerAction.requestDate 1..1 dateTime "requestDate" "requestDate"
* registerAction.requestedBy 1..1 Base "ActorType" "requestedBy"
* registerAction.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* registerAction.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* registerAction.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* registerAction.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* registerAction.registeredBy 1..1 Base "ActorType" "registeredBy"
* registerAction.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* registerAction.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* registerAction.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* registerAction.reasonText 0..1 string "reasonText" "reasonText"
* revokeReason 1..1 code "revokeReason" "revokeReason Tillåtna värden: PatientsConsent, Emergency."
* revokeReason from TemporaryRevokeReasonVS (required)
* revokeReasonText 0..1 string "revokeReasonText" "revokeReasonText"
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterTemporaryExtendedRevokeRequestFieldDescriptions
