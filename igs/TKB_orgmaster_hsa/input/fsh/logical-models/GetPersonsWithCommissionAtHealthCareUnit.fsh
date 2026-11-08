// Elementen genereras ur GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* PersonList 0..1 Base "(anonym typ)" "PersonList"
* PersonList.personListPerson 0..* Base "PersonListPerson" "personListPerson"
* PersonList.personListPerson.hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* PersonList.personListPerson.givenName 1..1 string "givenName" "givenName"
* PersonList.personListPerson.sn 1..1 string "sn" "sn"
* PersonList.personListPerson.personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
* PersonList.personListPerson.paTitleCodes 1..1 Base "PaTitleCodesType" "paTitleCodes"
* PersonList.personListPerson.paTitleCodes.paTitleCode 0..* string "paTitleCode" "paTitleCode"
* PersonList.personListPerson.paTitleNames 1..1 Base "PaTitleNamesType" "paTitleNames"
* PersonList.personListPerson.paTitleNames.paTitleName 0..* string "paTitleName" "paTitleName"
* PersonList.personListPerson.hsaTitles 1..1 Base "HsaTitlesType" "hsaTitles"
* PersonList.personListPerson.hsaTitles.hsaTitle 0..* string "hsaTitle" "hsaTitle"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonsWithCommissionAtHealthCareUnitFieldDescriptions
