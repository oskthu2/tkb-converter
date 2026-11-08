// Elementen genereras ur GetHealthCareProviderResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareProvider v1.0 — Request-parametrar
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: GetHealthCareProviderRequest
Id: gethealthcareprovider-request
Title: "GetHealthCareProvider — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareProvider (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1)."
Characteristics: #can-be-target

* ^version = "1.0"
* healthCareProviderHsaId 0..1 string "healthCareProviderHsaId" "healthCareProviderHsaId"
* healthCareProviderOrgNo 0..1 string "healthCareProviderOrgNo" "healthCareProviderOrgNo"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
* obeys gethealthcareproviderrequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthCareProviderRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* healthCareProviderHsaId obeys gethealthcareprovider-id-or-orgno

Invariant: gethealthcareproviderrequest-choice-1
Description: "Exakt ett av healthCareProviderHsaId, healthCareProviderOrgNo ska anges (xs:choice i schemat)."
Expression: "healthCareProviderHsaId.exists() xor healthCareProviderOrgNo.exists()"
Severity: #error

Invariant: gethealthcareprovider-id-or-orgno
Description: "Exakt ett av healthCareProviderHsaId och healthCareProviderOrgNo ska anges."
Expression: "healthCareProviderHsaId.exists() xor healthCareProviderOrgNo.exists()"
Severity: #error
