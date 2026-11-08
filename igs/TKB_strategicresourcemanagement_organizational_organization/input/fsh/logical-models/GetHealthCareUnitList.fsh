// Elementen genereras ur GetHealthCareUnitListResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* healthCareUnitList 0..1 Base "HealthCareUnitListType" "healthCareUnitList"
* healthCareUnitList.healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* healthCareUnitList.healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
* healthCareUnitList.healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* healthCareUnitList.healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
* healthCareUnitList.healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
* healthCareUnitList.healthCareUnit 0..* Base "HealthCareUnitType" "healthCareUnit"
* healthCareUnitList.healthCareUnit.healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* healthCareUnitList.healthCareUnit.healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
* healthCareUnitList.healthCareUnit.healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
* healthCareUnitList.healthCareUnit.healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
* healthCareUnitList.healthCareUnit.feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
* healthCareUnitList.healthCareUnit.archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
* healthCareUnitList.feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
* healthCareUnitList.archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareUnitListFieldDescriptions
