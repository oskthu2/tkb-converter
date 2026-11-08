// Elementen genereras ur GetHealthCareUnitListResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnitList v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnitListRequest
Id: gethealthcareunitlist-request
Title: "GetHealthCareUnitList — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareUnitList (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2)."
Characteristics: #can-be-target

* ^version = "2.0"
* healthCareProviderHsaId 1..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareUnitListRequestFieldDescriptions
