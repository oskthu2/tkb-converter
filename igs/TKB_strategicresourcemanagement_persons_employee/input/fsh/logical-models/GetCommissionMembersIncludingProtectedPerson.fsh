// Elementen genereras ur GetCommissionMembersIncludingProtectedPersonResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.employee v2.0 (Genererad ur scheman i riv.strategicresourcemanagement.persons.employee, tagg 2.0_RC1; scripts/xsd_to_ig.py)
// Kontrakt: GetCommissionMembersIncludingProtectedPerson v2.0
// Genererad: 2026-09-26

Logical: GetCommissionMembersIncludingProtectedPerson
Id: getcommissionmembersincludingprotectedperson
Title: "GetCommissionMembersIncludingProtectedPerson — Response"
Description: """
  Logisk modell för svaret i GetCommissionMembersIncludingProtectedPerson
  (urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersIncludingProtectedPersonResponder:2, GetCommissionMembersIncludingProtectedPersonResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personInformation 0..* Base "PersonInformationType" "personInformation"
* personInformation.personHsaId 1..1 string "personHsaId" "personHsaId"
* personInformation.givenName 0..1 string "givenName" "givenName"
* personInformation.middleAndSurName 1..1 string "middleAndSurName" "middleAndSurName"
* personInformation.nickName 0..1 string "nickName" "nickName"
* personInformation.mail 0..1 string "mail" "mail"
* personInformation.telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
* personInformation.telephoneNumber only TelephoneNumberType
* personInformation.switchboardNumber 0..1 string "switchboardNumber" "switchboardNumber"
* personInformation.switchboardNumber only TelephoneNumberType
* personInformation.nonPublicTelephoneNumber 0..* string "nonPublicTelephoneNumber" "nonPublicTelephoneNumber"
* personInformation.nonPublicTelephoneNumber only TelephoneNumberType
* personInformation.mobileNumber 0..* string "mobileNumber" "mobileNumber"
* personInformation.mobileNumber only TelephoneNumberType
* personInformation.smsTelephoneNumber 0..1 string "smsTelephoneNumber" "smsTelephoneNumber"
* personInformation.smsTelephoneNumber only TelephoneNumberType
* personInformation.facsimileTelephoneNumber 0..* string "facsimileTelephoneNumber" "facsimileTelephoneNumber"
* personInformation.facsimileTelephoneNumber only TelephoneNumberType
* personInformation.telephoneHour 0..* Base "TimeSpanType" "telephoneHour"
* personInformation.telephoneHour.fromDay 1..1 string "fromDay" "fromDay"
* personInformation.telephoneHour.fromTime 1..1 time "fromTime" "fromTime"
* personInformation.telephoneHour.toDay 1..1 string "toDay" "toDay"
* personInformation.telephoneHour.toTime 1..1 time "toTime" "toTime"
* personInformation.telephoneHour.comment 0..1 string "comment" "comment"
* personInformation.postalAddress 0..1 Base "AddressType" "postalAddress"
* personInformation.postalAddress.addressLine 1..* string "addressLine" "addressLine"
* personInformation.description 0..1 string "description" "description"
* personInformation.languageKnowledgeCode 0..* string "languageKnowledgeCode" "languageKnowledgeCode"
* personInformation.title 0..1 string "title" "title"
* personInformation.healthCareProfessionalLicence 0..* string "healthCareProfessionalLicence" "healthCareProfessionalLicence"
* personInformation.paTitle 0..* Base "PaTitleType" "paTitle"
* personInformation.paTitle.paTitleName 0..1 string "paTitleName" "paTitleName"
* personInformation.paTitle.paTitleCode 0..1 string "paTitleCode" "paTitleCode"
* personInformation.specialityName 0..* string "specialityName" "specialityName"
* personInformation.specialityCode 0..* string "specialityCode" "specialityCode"
* personInformation.dn 1..1 string "dn" "dn"
* personInformation.dn only DNType
* personInformation.protectedPerson 0..1 boolean "protectedPerson" "protectedPerson"
* personInformation.personStartDate 0..1 dateTime "personStartDate" "personStartDate"
* personInformation.personEndDate 0..1 dateTime "personEndDate" "personEndDate"
* personInformation.feignedPerson 0..1 boolean "feignedPerson" "feignedPerson"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCommissionMembersIncludingProtectedPersonFieldDescriptions
