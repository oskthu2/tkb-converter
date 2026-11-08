// Elementen genereras ur RevokeExtendedBlockResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RevokeExtendedBlock v4.0
// Genererad: 2026-09-26

Logical: RevokeExtendedBlockRequest
Id: revokeextendedblock-request
Title: "RevokeExtendedBlock — Request"
Description: """
  Logisk modell för begäran i RevokeExtendedBlock
  (urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* blockId 1..1 string "blockId" "blockId"
* revokeAction 1..1 Base "ActionType" "revokeAction"
* revokeAction.requestDate 1..1 dateTime "requestDate" "requestDate"
* revokeAction.requestedBy 1..1 Base "ActorType" "requestedBy"
* revokeAction.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* revokeAction.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* revokeAction.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* revokeAction.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* revokeAction.registeredBy 1..1 Base "ActorType" "registeredBy"
* revokeAction.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* revokeAction.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* revokeAction.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* revokeAction.reasonText 0..1 string "reasonText" "reasonText"
* revokeReasonText 0..1 string "revokeReasonText" "revokeReasonText"
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RevokeExtendedBlockRequestFieldDescriptions
