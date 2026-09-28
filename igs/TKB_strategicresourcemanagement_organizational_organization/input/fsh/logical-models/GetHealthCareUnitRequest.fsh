// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetHealthCareUnit v2.0
// Genererad: 2026-09-26

Logical: GetHealthCareUnitRequest
Id: gethealthcareunit-request
Title: "GetHealthCareUnit — Request"
Description: """
  Logisk modell för begäran i GetHealthCareUnit
  (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2, GetHealthCareUnitType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The HSA-id of the source system"
* healthCareUnitMemberHsaId 1..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
* searchBase 0..1 string "searchBase" "searchBase"
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
