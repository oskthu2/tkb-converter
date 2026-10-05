// Genererad från XSD för strategicresourcemanagement.persons.employee v2.0 (Genererad ur scheman i riv.strategicresourcemanagement.persons.employee, tagg 2.0_RC1; scripts/xsd_to_ig.py)
// Kontrakt: GetEmployeeIncludingProtectedPerson v2.0
// Genererad: 2026-09-26

Logical: GetEmployeeIncludingProtectedPerson
Id: getemployeeincludingprotectedperson
Title: "GetEmployeeIncludingProtectedPerson — Response"
Description: """
  Logisk modell för svaret i GetEmployeeIncludingProtectedPerson
  (urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* personInformation 0..* BackboneElement "personInformation" "personInformation"
  * personHsaId 1..1 string "personHsaId" "personHsaId"
  * givenName 0..1 string "givenName" "givenName"
  * middleAndSurName 1..1 string "middleAndSurName" "middleAndSurName"
  * nickName 0..1 string "nickName" "nickName"
  * mail 0..1 string "mail" "mail"
  * telephoneNumber 0..* string "telephoneNumber" "telephoneNumber"
  * switchboardNumber 0..1 string "switchboardNumber" "switchboardNumber"
  * nonPublicTelephoneNumber 0..* string "nonPublicTelephoneNumber" "nonPublicTelephoneNumber"
  * mobileNumber 0..* string "mobileNumber" "mobileNumber"
  * smsTelephoneNumber 0..1 string "smsTelephoneNumber" "smsTelephoneNumber"
  * facsimileTelephoneNumber 0..* string "facsimileTelephoneNumber" "facsimileTelephoneNumber"
  * telephoneHour 0..* BackboneElement "telephoneHour" "telephoneHour"
    * fromDay 1..1 string "fromDay" "fromDay"
    * fromTime 1..1 time "fromTime" "fromTime"
    * toDay 1..1 string "toDay" "toDay"
    * toTime 1..1 time "toTime" "toTime"
    * comment 0..1 string "comment" "comment"
  * postalAddress 0..1 BackboneElement "postalAddress" "postalAddress"
    * addressLine 1..* string "addressLine" "addressLine"
  * description 0..1 string "description" "description"
  * languageKnowledgeCode 0..* string "languageKnowledgeCode" "languageKnowledgeCode"
  * title 0..1 string "title" "title"
  * healthCareProfessionalLicence 0..* string "healthCareProfessionalLicence" "healthCareProfessionalLicence"
  * paTitle 0..* BackboneElement "paTitle" "paTitle"
    * paTitleName 0..1 string "paTitleName" "paTitleName"
    * paTitleCode 0..1 string "paTitleCode" "paTitleCode"
  * specialityName 0..* string "specialityName" "specialityName"
  * specialityCode 0..* string "specialityCode" "specialityCode"
  * dn 1..1 string "dn" "dn"
  * protectedPerson 0..1 boolean "protectedPerson" "protectedPerson"
  * personStartDate 0..1 dateTime "personStartDate" "personStartDate"
  * personEndDate 0..1 dateTime "personEndDate" "personEndDate"
  * feignedPerson 0..1 boolean "feignedPerson" "feignedPerson"
