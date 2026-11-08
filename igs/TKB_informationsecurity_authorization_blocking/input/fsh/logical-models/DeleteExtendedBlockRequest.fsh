// Elementen genereras ur DeleteExtendedBlockResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: DeleteExtendedBlock v4.0
// Genererad: 2026-09-26

Logical: DeleteExtendedBlockRequest
Id: deleteextendedblock-request
Title: "DeleteExtendedBlock — Request"
Description: """
  Logisk modell för begäran i DeleteExtendedBlock
  (urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlockResponder:4, DeleteExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* blockId 1..1 string "blockId" "blockId"
* deleteAction 1..1 Base "ActionType" "deleteAction"
* deleteAction.requestDate 1..1 dateTime "requestDate" "requestDate"
* deleteAction.requestedBy 1..1 Base "ActorType" "requestedBy"
* deleteAction.requestedBy.employeeId 1..1 string "employeeId" "employeeId"
* deleteAction.requestedBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* deleteAction.requestedBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* deleteAction.registrationDate 1..1 dateTime "registrationDate" "registrationDate"
* deleteAction.registeredBy 1..1 Base "ActorType" "registeredBy"
* deleteAction.registeredBy.employeeId 1..1 string "employeeId" "employeeId"
* deleteAction.registeredBy.assignmentId 0..1 string "assignmentId" "assignmentId"
* deleteAction.registeredBy.assignmentName 0..1 string "assignmentName" "assignmentName"
* deleteAction.reasonText 0..1 string "reasonText" "reasonText"
* deleteReasonText 0..1 string "deleteReasonText" "deleteReasonText"
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteExtendedBlockRequestFieldDescriptions
