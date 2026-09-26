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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Search base"
* hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* searchBase 0..1 string "searchBase" "searchBase"
* paTitleCodes 1..1 BackboneElement "paTitleCodes" "paTitleCodes"
  * paTitleCode 0..* string "paTitleCode" "paTitleCode"
* hsaTitles 1..1 BackboneElement "hsaTitles" "hsaTitles"
  * hsaTitle 0..* string "hsaTitle" "hsaTitle"
