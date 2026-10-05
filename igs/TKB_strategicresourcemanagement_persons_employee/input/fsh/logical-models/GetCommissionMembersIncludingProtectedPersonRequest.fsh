// Genererad från XSD för strategicresourcemanagement.persons.employee v2.0 (Genererad ur scheman i riv.strategicresourcemanagement.persons.employee, tagg 2.0_RC1; scripts/xsd_to_ig.py)
// Kontrakt: GetCommissionMembersIncludingProtectedPerson v2.0
// Genererad: 2026-09-26

Logical: GetCommissionMembersIncludingProtectedPersonRequest
Id: getcommissionmembersincludingprotectedperson-request
Title: "GetCommissionMembersIncludingProtectedPerson — Request"
Description: """
  Logisk modell för begäran i GetCommissionMembersIncludingProtectedPerson
  (urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersIncludingProtectedPersonResponder:2, GetCommissionMembersIncludingProtectedPersonType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The HSA-id of the source system"
* healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* commissionPurpose 1..1 string "commissionPurpose" "commissionPurpose"
* commissionRights 0..* string "commissionRights" "commissionRights"
* healthCareProfessionalLicense 0..* string "healthCareProfessionalLicense" "healthCareProfessionalLicense"
* searchBase 0..1 string "searchBase" "searchBase"
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
