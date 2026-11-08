// Elementen genereras ur GetMiuForPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* MiuInformation 0..* Base "MiuInformationType" "MiuInformation"
* MiuInformation.miuName 1..1 string "miuName" "miuName"
* MiuInformation.hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* MiuInformation.miuPurpose 1..1 string "miuPurpose" "miuPurpose"
* MiuInformation.careUnitHsaIdentity 1..1 string "careUnitHsaIdentity" "careUnitHsaIdentity"
* MiuInformation.careUnitName 0..1 string "careUnitName" "careUnitName"
* MiuInformation.careGiver 1..1 string "careGiver" "careGiver"
* MiuInformation.careGiverName 1..1 string "careGiverName" "careGiverName"
* MiuInformation.careGiverOrgNo 1..1 string "careGiverOrgNo" "careGiverOrgNo"
* MiuInformation.personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
* MiuInformation.hsaTitles 1..1 Base "HsaTitlesType" "hsaTitles"
* MiuInformation.hsaTitles.hsaTitle 0..* string "hsaTitle" "hsaTitle"
* MiuInformation.miuRights 1..1 Base "MiuRightsType" "miuRights"
* MiuInformation.miuRights.miuRight 0..* string "miuRight" "miuRight"
* MiuInformation.hsaSystemRoles 1..1 Base "HsaSystemRolesType" "hsaSystemRoles"
* MiuInformation.hsaSystemRoles.hsaSystemRole 0..* string "hsaSystemRole" "hsaSystemRole"
* MiuInformation.hsaIdentityPerson 1..1 string "hsaIdentityPerson" "hsaIdentityPerson"
* MiuInformation.paTitleCodes 1..1 Base "PaTitleCodesType" "paTitleCodes"
* MiuInformation.paTitleCodes.paTitleCode 0..* string "paTitleCode" "paTitleCode"
* MiuInformation.givenName 1..1 string "givenName" "givenName"
* MiuInformation.middleAndSurName 1..1 string "middleAndSurName" "middleAndSurName"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMiuForPersonFieldDescriptions
