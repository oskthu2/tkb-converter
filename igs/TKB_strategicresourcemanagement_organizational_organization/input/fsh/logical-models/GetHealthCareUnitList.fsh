// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetHealthCareUnitList v2.0
// Genererad: 2026-09-26

Logical: GetHealthCareUnitList
Id: gethealthcareunitlist
Title: "GetHealthCareUnitList — Response"
Description: """
  Logisk modell för svaret i GetHealthCareUnitList
  (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2, GetHealthCareUnitListResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* healthCareUnitList 0..1 BackboneElement "healthCareUnitList" "healthCareUnitList"
  * healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
  * healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
  * healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
  * healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
  * healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
  * healthCareUnit 0..* BackboneElement "healthCareUnit" "healthCareUnit"
    * healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
    * healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
    * healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
    * healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
    * feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
    * archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
  * feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
  * archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"
