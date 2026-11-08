// Elementen genereras ur GetHealthCareUnitResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnit v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnitRequest
Id: gethealthcareunit-request
Title: "GetHealthCareUnit — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2)."
Characteristics: #can-be-target

* ^version = "2.0"
* healthCareUnitMemberHsaId 1..1 string "healthCareUnitMemberHsaId" "healthCareUnitMemberHsaId"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareUnitRequestFieldDescriptions
