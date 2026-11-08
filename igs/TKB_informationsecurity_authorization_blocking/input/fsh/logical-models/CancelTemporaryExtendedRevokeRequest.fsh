// Elementen genereras ur CancelTemporaryExtendedRevokeResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CancelTemporaryExtendedRevoke v4.0
// Genererad: 2026-09-26

Logical: CancelTemporaryExtendedRevokeRequest
Id: canceltemporaryextendedrevoke-request
Title: "CancelTemporaryExtendedRevoke — Request"
Description: """
  Logisk modell för begäran i CancelTemporaryExtendedRevoke
  (urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4, CancelTemporaryExtendedRevokeType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
* cancellationInfo 1..1 Base "ActionType" "cancellationInfo"
* cancellationInfo.requestDate 1..1 dateTime "requestDate" "requestDate"
* cancellationInfo.requestedBy 1..1 Base "ActorType" "requestedBy"
* cancellationInfo.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* cancellationInfo.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* cancellationInfo.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* cancellationInfo.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* cancellationInfo.registeredBy 1..1 Base "ActorType" "registeredBy"
* cancellationInfo.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* cancellationInfo.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* cancellationInfo.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* cancellationInfo.reasonText 0..1 string "reasonText" "reasonText"
* cancelReasonText 0..1 string "cancelReasonText" "cancelReasonText"
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CancelTemporaryExtendedRevokeRequestFieldDescriptions
