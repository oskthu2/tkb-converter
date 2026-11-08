// Elementen genereras ur GetHsaUnitListResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetHsaUnitList v1.0
// Genererad: 2026-09-26

Logical: GetHsaUnitList
Id: gethsaunitlist
Title: "GetHsaUnitList — Response"
Description: """
  Logisk modell för svaret i GetHsaUnitList
  (urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* UnitList 0..1 Base "(anonym typ)" "UnitList"
* UnitList.unitListUnit 0..* Base "UnitListUnit" "unitListUnit"
* UnitList.unitListUnit.hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* UnitList.unitListUnit.name 1..1 string "name" "name"
* UnitList.unitListUnit.parentHsaIdentity 0..1 string "parentHsaIdentity" "parentHsaIdentity"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHsaUnitListFieldDescriptions
