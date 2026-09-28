// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetHsaUnit v1.0
// Genererad: 2026-09-26

Logical: GetHsaUnitRequest
Id: gethsaunit-request
Title: "GetHsaUnit — Request"
Description: """
  Logisk modell för begäran i GetHsaUnit
  (urn:riv:orgmaster:hsa:GetHsaUnitResponder:1, GetHsaUnitType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution"
* hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* searchBase 0..1 string "searchBase" "searchBase"
* getParentInfo 1..1 boolean "getParentInfo" "getParentInfo"
