// Elementen genereras ur RegisterBlockResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: RegisterBlock v4.0
// Genererad: 2026-09-26

Logical: RegisterBlockRequest
Id: registerblock-request
Title: "RegisterBlock — Request"
Description: """
  Logisk modell för begäran i RegisterBlock
  (urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL.
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
* temporaryRevokeRegistration 0..* Base "TemporaryRevokeRegistrationType" "temporaryRevokeRegistration"
* temporaryRevokeRegistration.temporaryRevokeId 1..1 string "temporaryRevokeId" "temporaryRevokeId"
* temporaryRevokeRegistration.blockId 1..1 string "blockId" "blockId"
* temporaryRevokeRegistration.endDate 1..1 dateTime "endDate" "endDate"
* temporaryRevokeRegistration.revokedForCareUnitId 1..1 string "revokedForCareUnitId" "revokedForCareUnitId"
* temporaryRevokeRegistration.revokedForEmployeeId 0..1 string "revokedForEmployeeId" "revokedForEmployeeId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegisterBlockRequestFieldDescriptions
