// Elementen genereras ur GetHsaUnitResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetHsaUnit v1.0
// Genererad: 2026-09-26

Logical: GetHsaUnitRequest
Id: gethsaunit-request
Title: "GetHsaUnit — Request"
Description: """
  Logisk modell för begäran i GetHsaUnit
  (urn:riv:orgmaster:hsa:GetHsaUnitResponder:1, GetHsaUnitType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only SearchBaseType
* getParentInfo 1..1 boolean "getParentInfo" "getParentInfo"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHsaUnitRequestFieldDescriptions
