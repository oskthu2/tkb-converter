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
* masterDataChangeSet 0..* BackboneElement "masterDataChangeSet" "masterDataChangeSet"
  * masterDataChangeSetId 1..1 BackboneElement "masterDataChangeSetId" "masterDataChangeSetId Heter id i schemat."
    * root 1..1 string "root" "root"
    * iiExtension 1..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * category 1..1 code "category" "category"
  * category from CategoryVS (required)
  * changeTime 0..1 string "changeTime" "changeTime"
  * attributes 0..* BackboneElement "attributes" "attributes"
    * masterDataAttribute 1..1 string "masterDataAttribute" "masterDataAttribute"
