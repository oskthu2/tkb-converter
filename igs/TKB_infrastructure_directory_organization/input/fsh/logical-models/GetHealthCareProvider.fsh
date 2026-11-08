// Elementen genereras ur GetHealthCareProviderResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareProvider v1.0
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: GetHealthCareProvider
Id: gethealthcareprovider
Title: "GetHealthCareProvider"
Description: """
  Logisk modell för tjänstekontraktet GetHealthCareProvider
  (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1).
  Söker ut och returnerar information om en vårdgivare. Representerar responsens
  informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* healthCareProvider 0..* Base "HealthCareProviderType" "healthCareProvider"
* healthCareProvider.healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* healthCareProvider.healthCareProviderName 1..1 string "healthCareProviderName" "healthCareProviderName"
* healthCareProvider.healthCareProviderOrgNo 1..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* healthCareProvider.healthCareProviderStartDate 0..1 dateTime "healthCareProviderStartDate" "healthCareProviderStartDate"
* healthCareProvider.healthCareProviderEndDate 0..1 dateTime "healthCareProviderEndDate" "healthCareProviderEndDate"
* healthCareProvider.feignedHealthCareProvider 0..1 boolean "feignedHealthCareProvider" "feignedHealthCareProvider"
* healthCareProvider.archivedHealthCareProvider 0..1 boolean "archivedHealthCareProvider" "archivedHealthCareProvider"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareProviderFieldDescriptions
