// Elementen genereras ur GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetPersonsWithCommissionAtHealthCareUnit v1.0
// Genererad: 2026-09-26

Logical: GetPersonsWithCommissionAtHealthCareUnitRequest
Id: getpersonswithcommissionathealthcareunit-request
Title: "GetPersonsWithCommissionAtHealthCareUnit — Request"
Description: """
  Logisk modell för begäran i GetPersonsWithCommissionAtHealthCareUnit
  (urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1, GetPersonsWithCommissionAtHealthCareUnitType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* searchBase 0..1 string "searchBase" "searchBase"
* searchBase only SearchBaseType
* paTitleCodes 1..1 Base "PaTitleCodesType" "paTitleCodes"
* paTitleCodes.paTitleCode 0..* string "paTitleCode" "paTitleCode"
* hsaTitles 1..1 Base "HsaTitlesType" "hsaTitles"
* hsaTitles.hsaTitle 0..* string "hsaTitle" "hsaTitle"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonsWithCommissionAtHealthCareUnitRequestFieldDescriptions
