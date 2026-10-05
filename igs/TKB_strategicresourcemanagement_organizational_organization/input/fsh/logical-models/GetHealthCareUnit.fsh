// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetHealthCareUnit v2.0
// Genererad: 2026-09-26

Logical: GetHealthCareUnit
Id: gethealthcareunit
Title: "GetHealthCareUnit — Response"
Description: """
  Logisk modell för svaret i GetHealthCareUnit
  (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2, GetHealthCareUnitResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* healthCareUnit 0..1 BackboneElement "healthCareUnit" "healthCareUnit"
  * unitIsHealthCareUnit 0..1 boolean "unitIsHealthCareUnit" "unitIsHealthCareUnit"
  * healthCareUnitMemberHsaId 0..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
  * healthCareUnitMemberName 0..1 string "healthCareUnitMemberName" "healthCareUnitMemberName"
  * healthCareUnitMemberStartDate 0..1 dateTime "healthCareUnitMemberStartDate" "healthCareUnitMemberStartDate"
  * healthCareUnitMemberEndDate 0..1 dateTime "healthCareUnitMemberEndDate" "healthCareUnitMemberEndDate"
  * healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
  * healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
  * healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
  * healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
  * healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
  * healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
  * healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
  * healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
  * healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
  * feignedHealthCareUnitMember 0..1 boolean "feignedHealthCareUnitMember" "feignedHealthCareUnitMember"
  * feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
  * feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
  * archivedHealthCareUnitMember 0..1 boolean "archivedHealthCareUnitMember" "archivedHealthCareUnitMember"
  * archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
  * archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"
