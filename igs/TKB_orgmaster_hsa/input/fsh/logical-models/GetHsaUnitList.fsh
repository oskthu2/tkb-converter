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
* UnitList 0..1 BackboneElement "UnitList" "UnitList"
  * unitListUnit 0..* BackboneElement "unitListUnit" "unitListUnit"
    * hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
    * unitListUnitName 1..1 string "unitListUnitName" "unitListUnitName Heter name i schemat."
    * parentHsaIdentity 0..1 string "parentHsaIdentity" "parentHsaIdentity"
