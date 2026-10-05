// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetHealthCareUnitMembers v2.0
// Genererad: 2026-09-26

Logical: GetHealthCareUnitMembersRequest
Id: gethealthcareunitmembers-request
Title: "GetHealthCareUnitMembers — Request"
Description: """
  Logisk modell för begäran i GetHealthCareUnitMembers
  (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2, GetHealthCareUnitMembersType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The HSA-id of the source system"
* healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* searchBase 0..1 string "searchBase" "searchBase"
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
