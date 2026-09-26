// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetHsaUnitList v1.0
// Genererad: 2026-09-26

Logical: GetHsaUnitListRequest
Id: gethsaunitlist-request
Title: "GetHsaUnitList — Request"
Description: """
  Logisk modell för begäran i GetHsaUnitList
  (urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. HSA identity"
* hsaIdentity 0..1 string "hsaIdentity" "hsaIdentity"
* searchBase 0..1 string "searchBase" "searchBase"
