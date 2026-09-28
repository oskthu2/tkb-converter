// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetPersonsWithCommissionAtHealthCareUnit v1.0
// Genererad: 2026-09-26

Logical: GetPersonsWithCommissionAtHealthCareUnit
Id: getpersonswithcommissionathealthcareunit
Title: "GetPersonsWithCommissionAtHealthCareUnit — Response"
Description: """
  Logisk modell för svaret i GetPersonsWithCommissionAtHealthCareUnit
  (urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1, GetPersonsWithCommissionAtHealthCareUnitResponseType).
"""
Characteristics: #can-be-target
* PersonList 0..1 BackboneElement "PersonList" "PersonList"
  * personListPerson 0..* BackboneElement "personListPerson" "personListPerson"
    * hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
    * givenName 1..1 string "givenName" "givenName"
    * sn 1..1 string "sn" "sn"
    * personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
    * paTitleCodes 1..1 BackboneElement "paTitleCodes" "paTitleCodes"
      * paTitleCode 0..* string "paTitleCode" "paTitleCode"
    * paTitleNames 1..1 BackboneElement "paTitleNames" "paTitleNames"
      * paTitleName 0..* string "paTitleName" "paTitleName"
    * hsaTitles 1..1 BackboneElement "hsaTitles" "hsaTitles"
      * hsaTitle 0..* string "hsaTitle" "hsaTitle"
