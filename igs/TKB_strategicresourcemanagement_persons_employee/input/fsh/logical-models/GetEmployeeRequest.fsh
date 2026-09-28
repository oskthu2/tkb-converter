// Genererad från XSD för strategicresourcemanagement.persons.employee v2.0 (Genererad ur scheman i riv.strategicresourcemanagement.persons.employee, tagg 2.0_RC1; scripts/xsd_to_ig.py)
// Kontrakt: GetEmployee v2.0
// Genererad: 2026-09-26

Logical: GetEmployeeRequest
Id: getemployee-request
Title: "GetEmployee — Request"
Description: """
  Logisk modell för begäran i GetEmployee
  (urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeResponder:2, GetEmployeeType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The HSA-id of the source system"
* personHsaId 0..1 string "personHsaId" "personHsaId"
* personalIdentityNumber 0..1 string "personalIdentityNumber" "personalIdentityNumber"
* searchBase 0..1 string "searchBase" "searchBase"
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
