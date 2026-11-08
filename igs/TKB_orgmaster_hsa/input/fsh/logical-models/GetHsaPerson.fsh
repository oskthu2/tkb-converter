// Elementen genereras ur GetHsaPersonResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för orgmaster.hsa v1.0.0 (fält ur XSD, se TKB avsnitt 3–7; scripts/xsd_to_ig.py)
// Kontrakt: GetHsaPerson v1.0
// Genererad: 2026-09-26

Logical: GetHsaPerson
Id: gethsaperson
Title: "GetHsaPerson — Response"
Description: """
  Logisk modell för svaret i GetHsaPerson
  (urn:riv:orgmaster:hsa:GetHsaPersonResponder:1, GetHsaPersonResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* userInformations 0..1 Base "(anonym typ)" "userInformations"
* userInformations.userInformation 0..* Base "GetHsaPersonHsaUserType" "userInformation"
* userInformations.userInformation.personalPrescriptionCode 0..1 string "personalPrescriptionCode" "personalPrescriptionCode"
* userInformations.userInformation.description 0..1 string "description" "description"
* userInformations.userInformation.paTitleCodes 1..1 Base "PaTitleCodesType" "paTitleCodes"
* userInformations.userInformation.paTitleCodes.paTitleCode 0..* string "paTitleCode" "paTitleCode"
* userInformations.userInformation.paTitleNames 1..1 Base "PaTitleNamesType" "paTitleNames"
* userInformations.userInformation.paTitleNames.paTitleName 0..* string "paTitleName" "paTitleName"
* userInformations.userInformation.mail 0..1 string "mail" "mail"
* userInformations.userInformation.givenName 1..1 string "givenName" "givenName"
* userInformations.userInformation.hsaIdentity 1..1 string "hsaIdentity" "hsaIdentity"
* userInformations.userInformation.hsaSwitchboardNumber 0..1 string "hsaSwitchboardNumber" "hsaSwitchboardNumber"
* userInformations.userInformation.hsaSwitchboardNumber only TelephoneNumberType
* userInformations.userInformation.hsaTelephoneNumbers 1..1 Base "(anonym typ)" "hsaTelephoneNumbers"
* userInformations.userInformation.hsaTelephoneNumbers.hsaTelephoneNumber 0..* string "hsaTelephoneNumber" "hsaTelephoneNumber"
* userInformations.userInformation.hsaTelephoneNumbers.hsaTelephoneNumber only TelephoneNumberType
* userInformations.userInformation.labeledUri 0..1 string "labeledUri" "labeledUri"
* userInformations.userInformation.languageKnowledgeCodes 0..1 Base "(anonym typ)" "languageKnowledgeCodes"
* userInformations.userInformation.languageKnowledgeCodes.languageKnowledgeCode 0..* string "languageKnowledgeCode" "languageKnowledgeCode"
* userInformations.userInformation.mobileNumbers 1..1 Base "(anonym typ)" "mobileNumbers"
* userInformations.userInformation.mobileNumbers.mobileNumber 0..* string "mobileNumber" "mobileNumber"
* userInformations.userInformation.mobileNumbers.mobileNumber only TelephoneNumberType
* userInformations.userInformation.facsimileTelephoneNumbers 1..1 Base "(anonym typ)" "facsimileTelephoneNumbers"
* userInformations.userInformation.facsimileTelephoneNumbers.facsimileTelephoneNumber 0..* string "facsimileTelephoneNumber" "facsimileTelephoneNumber"
* userInformations.userInformation.facsimileTelephoneNumbers.facsimileTelephoneNumber only TelephoneNumberType
* userInformations.userInformation.nickName 0..1 string "nickName" "nickName"
* userInformations.userInformation.smsTelephoneNumber 0..1 string "smsTelephoneNumber" "smsTelephoneNumber"
* userInformations.userInformation.smsTelephoneNumber only TelephoneNumberType
* userInformations.userInformation.specialityCodes 1..1 Base "(anonym typ)" "specialityCodes"
* userInformations.userInformation.specialityCodes.specialityCode 0..* string "specialityCode" "specialityCode"
* userInformations.userInformation.specialityNames 1..1 Base "(anonym typ)" "specialityNames"
* userInformations.userInformation.specialityNames.specialityName 0..* string "specialityName" "specialityName"
* userInformations.userInformation.sn 1..1 string "sn" "sn"
* userInformations.userInformation.telephoneHours 1..1 Base "TelephoneHoursType" "telephoneHours"
* userInformations.userInformation.telephoneHours.telephoneHour 0..* Base "TimeSpanType" "telephoneHour"
* userInformations.userInformation.telephoneHours.telephoneHour.fromDay 1..1 integer "fromDay" "fromDay"
* userInformations.userInformation.telephoneHours.telephoneHour.fromTime 1..1 time "fromTime" "fromTime"
* userInformations.userInformation.telephoneHours.telephoneHour.fromTime2 1..1 string "fromTime2" "fromTime2"
* userInformations.userInformation.telephoneHours.telephoneHour.toDay 1..1 integer "toDay" "toDay"
* userInformations.userInformation.telephoneHours.telephoneHour.toTime 1..1 time "toTime" "toTime"
* userInformations.userInformation.telephoneHours.telephoneHour.toTime2 1..1 string "toTime2" "toTime2"
* userInformations.userInformation.telephoneHours.telephoneHour.comment 1..1 string "comment" "comment"
* userInformations.userInformation.telephoneNumbers 1..1 Base "(anonym typ)" "telephoneNumbers"
* userInformations.userInformation.telephoneNumbers.telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
* userInformations.userInformation.telephoneNumbers.telephoneNumber only TelephoneNumberType
* userInformations.userInformation.title 0..1 string "title" "title"
* userInformations.userInformation.DN 1..1 string "DN" "DN"
* userInformations.userInformation.middleName 1..1 string "middleName" "middleName"
* userInformations.userInformation.postalAddress 0..1 Base "AddressType" "postalAddress"
* userInformations.userInformation.postalAddress.addressLine 1..* string "addressLine" "addressLine"
* userInformations.userInformation.hsaTitles 1..1 Base "HsaTitlesType" "hsaTitles"
* userInformations.userInformation.hsaTitles.hsaTitle 0..* string "hsaTitle" "hsaTitle"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHsaPersonFieldDescriptions
