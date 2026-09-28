// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetHsaPerson v1.0
// Genererad: 2026-09-26

Logical: GetHsaPersonRequest
Id: gethsaperson-request
Title: "GetHsaPerson — Request"
Description: """
  Logisk modell för begäran i GetHsaPerson
  (urn:riv:orgmaster:hsa:GetHsaPersonResponder:1, GetHsaPersonType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution"
* hsaIdentity 0..1 string "hsaIdentity" "hsaIdentity"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* searchBase 0..1 string "searchBase" "searchBase"
