// Elementen genereras ur GetHealthCareUnitIncludingManagerResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetHealthCareUnitIncludingManager v2.0
// Genererad: 2026-09-26

Logical: GetHealthCareUnitIncludingManager
Id: gethealthcareunitincludingmanager
Title: "GetHealthCareUnitIncludingManager — Response"
Description: """
  Logisk modell för svaret i GetHealthCareUnitIncludingManager
  (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* healthCareUnit 0..1 Base "HealthCareUnitIncludingManagerType" "healthCareUnit"
* healthCareUnit.healthCareUnitMemberHsaId 0..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
* healthCareUnit.healthCareUnitMemberName 0..1 string "healthCareUnitMemberName" "healthCareUnitMemberName"
* healthCareUnit.healthCareUnitMemberStartDate 0..1 dateTime "healthCareUnitMemberStartDate" "healthCareUnitMemberStartDate"
* healthCareUnit.healthCareUnitMemberEndDate 0..1 dateTime "healthCareUnitMemberEndDate" "healthCareUnitMemberEndDate"
* healthCareUnit.healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* healthCareUnit.unitIsHealthCareUnit 0..1 boolean "unitIsHealthCareUnit" "unitIsHealthCareUnit"
* healthCareUnit.healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
* healthCareUnit.healthCareUnitManagerHsaId 0..1 string "healthCareUnitManagerHsaId" "healthCareUnitManagerHsaId"
* healthCareUnit.healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
* healthCareUnit.healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
* healthCareUnit.healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* healthCareUnit.healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
* healthCareUnit.healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* healthCareUnit.healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
* healthCareUnit.healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
* healthCareUnit.feignedHealthCareUnitMember 0..1 boolean "feignedHealthCareUnitMember" "feignedHealthCareUnitMember"
* healthCareUnit.feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
* healthCareUnit.feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
* healthCareUnit.feignedHealthCareUnitManager 0..1 boolean "feignedHealthCareUnitManager" "feignedHealthCareUnitManager"
* healthCareUnit.archivedHealthCareUnitMember 0..1 boolean "archivedHealthCareUnitMember" "archivedHealthCareUnitMember"
* healthCareUnit.archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
* healthCareUnit.archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareUnitIncludingManagerFieldDescriptions
