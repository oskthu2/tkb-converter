// Elementen genereras ur GetHealthCareUnitResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnit v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnit
Id: gethealthcareunit
Title: "GetHealthCareUnit"
Description: """
  Logisk modell för tjänstekontraktet GetHealthCareUnit
  (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2).
  Representerar responsens informationsstruktur — vårdenhet med tillhörande organisatorisk information.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* healthCareUnit 0..1 Base "HealthCareUnitType" "healthCareUnit"
* healthCareUnit.unitIsHealthCareUnit 0..1 boolean "unitIsHealthCareUnit" "unitIsHealthCareUnit"
* healthCareUnit.healthCareUnitMemberHsaId 0..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
* healthCareUnit.healthCareUnitMemberName 0..1 string "healthCareUnitMemberName" "healthCareUnitMemberName"
* healthCareUnit.healthCareUnitMemberPublicName 0..1 string "healthCareUnitMemberPublicName" "healthCareUnitMemberPublicName"
* healthCareUnit.healthCareUnitMemberStartDate 0..1 dateTime "healthCareUnitMemberStartDate" "healthCareUnitMemberStartDate"
* healthCareUnit.healthCareUnitMemberEndDate 0..1 dateTime "healthCareUnitMemberEndDate" "healthCareUnitMemberEndDate"
* healthCareUnit.healthCareUnitHsaId 1..1 string "healthCareUnitHsaId" "healthCareUnitHsaId"
* healthCareUnit.healthCareUnitName 1..1 string "healthCareUnitName" "healthCareUnitName"
* healthCareUnit.healthCareUnitPublicName 1..1 string "healthCareUnitPublicName" "healthCareUnitPublicName"
* healthCareUnit.healthCareUnitStartDate 0..1 dateTime "healthCareUnitStartDate" "healthCareUnitStartDate"
* healthCareUnit.healthCareUnitEndDate 0..1 dateTime "healthCareUnitEndDate" "healthCareUnitEndDate"
* healthCareUnit.healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* healthCareUnit.healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
* healthCareUnit.healthCareProviderPublicName 1..1 string "healthCareProviderPublicName" "healthCareProviderPublicName"
* healthCareUnit.healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* healthCareUnit.healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
* healthCareUnit.healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
* healthCareUnit.feignedHealthCareUnitMember 0..1 boolean "feignedHealthCareUnitMember" "feignedHealthCareUnitMember"
* healthCareUnit.feignedHealthCareUnit 0..1 boolean "feignedHealthCareUnit" "feignedHealthCareUnit"
* healthCareUnit.feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
* healthCareUnit.archivedHealthCareUnitMember 0..1 boolean "archivedHealthCareUnitMember" "archivedHealthCareUnitMember"
* healthCareUnit.archivedHealthCareUnit 0..1 boolean "archivedHealthCareUnit" "archivedHealthCareUnit"
* healthCareUnit.archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareUnitFieldDescriptions
