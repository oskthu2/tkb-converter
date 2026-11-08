// Elementen genereras ur GetCommissionMembersResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.employee v2.0 (Genererad ur scheman i riv.strategicresourcemanagement.persons.employee, tagg 2.0_RC1; scripts/xsd_to_ig.py)
// Kontrakt: GetCommissionMembers v2.0
// Genererad: 2026-09-26

Logical: GetCommissionMembersRequest
Id: getcommissionmembers-request
Title: "GetCommissionMembers — Request"
Description: """
  Logisk modell för begäran i GetCommissionMembers
  (urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2, GetCommissionMembersType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* commissionPurpose 1..1 string "commissionPurpose" "commissionPurpose"
* commissionRights 0..* string "commissionRights" "commissionRights"
* healthCareProfessionalLicense 0..* string "healthCareProfessionalLicense" "healthCareProfessionalLicense"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCommissionMembersRequestFieldDescriptions
