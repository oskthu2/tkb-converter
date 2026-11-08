// Elementen genereras ur GetMasterDataChangeSetResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för infrastructure.directory.synchronization v1.0_RC3 (Genererad ur scheman i riv.infrastructure.directory.synchronization, tagg 1.0_RC3; scripts/xsd_to_ig.py)
// Kontrakt: GetMasterDataChangeSet v1.0
// Genererad: 2026-09-26

Logical: GetMasterDataChangeSetRequest
Id: getmasterdatachangeset-request
Title: "GetMasterDataChangeSet — Request"
Description: """
  Logisk modell för begäran i GetMasterDataChangeSet
  (urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* masterDataEntity 1..1 CVType "masterDataEntity" "masterDataEntity"
* category 0..1 code "category" "category Tillåtna värden: CREATE, UPDATE, DELETE."
* category from CategoryVS (required)
* timePeriod 0..1 TimePeriodType "timePeriod" "timePeriod"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMasterDataChangeSetRequestFieldDescriptions
