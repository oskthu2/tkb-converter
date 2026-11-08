// Elementen genereras ur GetMasterDataChangeSetResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.directory.synchronization v1.0_RC3 (Genererad ur scheman i riv.infrastructure.directory.synchronization, tagg 1.0_RC3; scripts/xsd_to_ig.py)
// Kontrakt: GetMasterDataChangeSet v1.0
// Genererad: 2026-09-26

Logical: GetMasterDataChangeSet
Id: getmasterdatachangeset
Title: "GetMasterDataChangeSet — Response"
Description: """
  Logisk modell för svaret i GetMasterDataChangeSet
  (urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* masterDataChangeSet 0..* Base "MasterDataChangeSetType" "masterDataChangeSet"
* masterDataChangeSet.id 1..1 IIType "id" "id"
* masterDataChangeSet.category 1..1 code "category" "category Tillåtna värden: CREATE, UPDATE, DELETE."
* masterDataChangeSet.category from CategoryVS (required)
* masterDataChangeSet.changeTime 0..1 string "changeTime" "changeTime"
* masterDataChangeSet.changeTime only TimeStampType
* masterDataChangeSet.attributes 0..* Base "MasterDataAttributeType" "attributes"
* masterDataChangeSet.attributes.masterDataAttribute 1..1 string "masterDataAttribute" "masterDataAttribute"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMasterDataChangeSetFieldDescriptions
