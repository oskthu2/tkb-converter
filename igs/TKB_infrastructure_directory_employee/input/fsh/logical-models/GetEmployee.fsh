// Elementen genereras ur GetEmployeeResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetEmployee v4.0
// Genererad: 2026-05-19

Logical: GetEmployee
Id: getemployee
Title: "GetEmployee"
Description: """
  Logisk modell för tjänstekontraktet GetEmployee
  (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).
  Representerar responsens informationsstruktur.
  Är identisk med GetEmployeeIncludingProtectedPerson förutom att skyddade personer
  aldrig returneras — fältet protectedPerson returneras alltså aldrig.
"""
Characteristics: #can-be-target

* ^version = "4.0"
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
* personInformation.facsimileTelephoneNumber 0..* string "facsimileTelephoneNumber" "facsimileTelephoneNumber"
* personInformation.facsimileTelephoneNumber only TelephoneNumberType
* personInformation.telephoneHour 0..* Base "TimeSpanType" "telephoneHour"
* personInformation.telephoneHour.fromDay 1..1 string "fromDay" "fromDay"
* personInformation.telephoneHour.fromTime 1..1 time "fromTime" "fromTime"
* personInformation.telephoneHour.toDay 1..1 string "toDay" "toDay"
* personInformation.telephoneHour.toTime 1..1 time "toTime" "toTime"
* personInformation.telephoneHour.comment 0..1 string "comment" "comment"
* personInformation.telephoneHour.fromDate 0..1 string "fromDate" "fromDate"
* personInformation.telephoneHour.toDate 0..1 string "toDate" "toDate"
* personInformation.postalAddress 0..1 Base "AddressType" "postalAddress"
* personInformation.postalAddress.addressLine 1..* string "addressLine" "addressLine"
* personInformation.description 0..1 string "description" "description"
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
* personInformation.healthCareProfessionalLicenceSpeciality 0..* Base "HealthCareProfessionalLicenceSpecialityType" "healthCareProfessionalLicenceSpeciality"
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence 1..1 string "healthCareProfessionalLicence" "healthCareProfessionalLicence"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "specialityCode" "specialityCode"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "specialityName" "specialityName"
* personInformation.age 0..1 string "age" "age"
* personInformation.gender 0..1 string "gender" "gender"
* personInformation.structuredPostalAddress 0..1 Base "StructuredPostalAddressType" "structuredPostalAddress"
* personInformation.structuredPostalAddress.addressee 1..* string "addressee" "addressee"
* personInformation.structuredPostalAddress.street 0..1 string "street" "street"
* personInformation.structuredPostalAddress.premisesNumber 0..1 string "premisesNumber" "premisesNumber"
* personInformation.structuredPostalAddress.premisesLetter 0..1 string "premisesLetter" "premisesLetter"
* personInformation.structuredPostalAddress.postCode 1..1 string "postCode" "postCode"
* personInformation.structuredPostalAddress.town 1..1 string "town" "town"
