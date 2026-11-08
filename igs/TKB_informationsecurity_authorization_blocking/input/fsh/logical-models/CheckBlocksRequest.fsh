// Elementen genereras ur CheckBlocksResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckBlocks v4.0
// Genererad: 2026-09-26

Logical: CheckBlocksRequest
Id: checkblocks-request
Title: "CheckBlocks — Request"
Description: """
  Logisk modell för begäran i CheckBlocks
  (urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* accessingActor 1..1 Base "AccessingActorType" "accessingActor"
* accessingActor.employeeId 1..1 string "employeeId" "employeeId"
* accessingActor.careProviderId 1..1 string "careProviderId" "careProviderId"
* accessingActor.careUnitId 1..1 string "careUnitId" "careUnitId"
* patientId 1..1 IIType "patientId" "patientId"
* informationEntities 1..* Base "InformationEntityType" "informationEntities"
* informationEntities.informationStartDate 1..1 dateTime "informationStartDate" "informationStartDate"
* informationEntities.informationEndDate 1..1 dateTime "informationEndDate" "informationEndDate"
* informationEntities.informationCareUnitId 1..1 string "informationCareUnitId" "informationCareUnitId"
* informationEntities.informationCareProviderId 1..1 string "informationCareProviderId" "informationCareProviderId"
* informationEntities.informationType 0..1 string "informationType" "informationType"
* informationEntities.rowNumber 1..1 integer "rowNumber" "rowNumber"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CheckBlocksRequestFieldDescriptions
