// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetMiuForPerson v1.0
// Genererad: 2026-09-26

Logical: GetMiuForPerson
Id: getmiuforperson
Title: "GetMiuForPerson — Response"
Description: """
  Logisk modell för svaret i GetMiuForPerson
  (urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1, GetMiuForPersonResponseType).
"""
Characteristics: #can-be-target
* MiuInformation 0..* BackboneElement "MiuInformation" "MiuInformation"
  * miuName 1..1 string "miuName" "miuName"
  * hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
  * miuPurpose 1..1 string "miuPurpose" "miuPurpose"
  * careUnitHsaIdentity 1..1 string "careUnitHsaIdentity" "careUnitHsaIdentity"
  * careUnitName 0..1 string "careUnitName" "careUnitName"
  * careGiver 1..1 string "careGiver" "careGiver"
  * careGiverName 1..1 string "careGiverName" "careGiverName"
  * careGiverOrgNo 1..1 string "careGiverOrgNo" "careGiverOrgNo"
  * personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
  * hsaTitles 1..1 BackboneElement "hsaTitles" "hsaTitles"
    * hsaTitle 0..* string "hsaTitle" "hsaTitle"
  * miuRights 1..1 BackboneElement "miuRights" "miuRights"
    * miuRight 0..* string "miuRight" "miuRight"
  * hsaSystemRoles 1..1 BackboneElement "hsaSystemRoles" "hsaSystemRoles"
    * hsaSystemRole 0..* string "hsaSystemRole" "hsaSystemRole"
  * hsaIdentityPerson 1..1 string "hsaIdentityPerson" "hsaIdentityPerson"
  * paTitleCodes 1..1 BackboneElement "paTitleCodes" "paTitleCodes"
    * paTitleCode 0..* string "paTitleCode" "paTitleCode"
  * givenName 1..1 string "givenName" "givenName"
  * middleAndSurName 1..1 string "middleAndSurName" "middleAndSurName"
