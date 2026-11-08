// Elementen genereras ur GetCommissionMembersResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetCommissionMembers v3.0 — Request
// Genererad: 2026-05-19

Logical: GetCommissionMembersRequest
Id: getcommissionmembers-request
Title: "GetCommissionMembers — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetCommissionMembers
  (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembers:3).
  Är identisk med GetCommissionMembersIncludingProtectedPersonRequest förutom att
  skyddade personer aldrig returneras.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* commissionPurpose 1..1 string "commissionPurpose" "commissionPurpose"
* commissionRights 0..* string "commissionRights" "commissionRights"
* healthCareProfessionalLicense 0..* string "healthCareProfessionalLicense" "healthCareProfessionalLicense"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
