// Elementen genereras ur GetUnitResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetUnit v5.0
// Genererad: 2026-05-19

Logical: GetUnitRequest
Id: getunit-request
Title: "GetUnit — Request"
Description: "Logisk modell för requestparametrar i GetUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetUnit:5)."
Characteristics: #can-be-target

* ^version = "5.0"
* unitHsaId 1..1 string "unitHsaId" "unitHsaId"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"
* profile 0..* string "profile" "profile"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetUnitRequestFieldDescriptions
