// Elementen genereras ur GetUnitResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.organizational.organization v2.0 (Genererat ur domänens XSD (senaste commit med innehåll, b349285d18c2).; scripts/xsd_to_ig.py)
// Kontrakt: GetUnit v2.0
// Genererad: 2026-09-26

Logical: GetUnitRequest
Id: getunit-request
Title: "GetUnit — Request"
Description: """
  Logisk modell för begäran i GetUnit
  (urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2, GetUnitType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* unitHsaId 1..1 string "unitHsaId" "unitHsaId"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only DNType
* includeFeignedObject 0..1 boolean "includeFeignedObject" "includeFeignedObject"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetUnitRequestFieldDescriptions
