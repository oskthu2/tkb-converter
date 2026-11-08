// Elementen genereras ur RegisterExtendedBlockResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterExtendedBlock v4.0
// Genererad: 2026-09-26

Logical: RegisterExtendedBlockRequest
Id: registerextendedblock-request
Title: "RegisterExtendedBlock — Request"
Description: """
  Logisk modell för begäran i RegisterExtendedBlock
  (urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* blockId 1..1 string "blockId" "blockId"
* blockType 1..1 code "blockType" "blockType Tillåtna värden: Inner, Outer."
* blockType from BlockTypeVS (required)
* patientId 1..1 IIType "patientId" "patientId"
* informationStartDate 0..1 dateTime "informationStartDate" "informationStartDate"
* informationEndDate 0..1 dateTime "informationEndDate" "informationEndDate"
* informationCareUnitId 0..1 string "informationCareUnitId" "informationCareUnitId"
* informationCareProviderId 1..1 string "informationCareProviderId" "informationCareProviderId"
* excludedInformationTypes 0..* string "excludedInformationTypes" "excludedInformationTypes"
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
* replicationTimeout 1..1 integer "replicationTimeout" "replicationTimeout"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterExtendedBlockRequestFieldDescriptions
