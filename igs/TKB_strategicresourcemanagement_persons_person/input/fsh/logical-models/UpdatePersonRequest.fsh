// Elementen genereras ur UpdatePersonResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UpdatePerson v5.0
// Genererad: 2026-09-26

Logical: UpdatePersonRequest
Id: updateperson-request
Title: "UpdatePerson — Request"
Description: """
  Logisk modell för begäran i UpdatePerson
  (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "5.0"
* actor 1..1 Base "ActorType" "actor"
* actor.id 1..1 IIType "id" "id"
* actor.professional 0..1 Base "ProfessionalType" "professional"
* actor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* actor.updateTime 0..1 string "updateTime" "updateTime"
* personId 0..1 IIType "personId" "personId"
* gender 0..1 string "gender" "gender"
* versionToUpdate 0..1 string "versionToUpdate" "versionToUpdate"
* name 0..1 Base "NameType" "name"
* name.givenNameIndicator 0..1 integer "givenNameIndicator" "givenNameIndicator"
* name.givenName 0..1 string "givenName" "givenName"
* name.middleName 0..1 string "middleName" "middleName"
* name.surname 0..1 string "surname" "surname"
* name.notificationName 0..1 string "notificationName" "notificationName"
* birth 0..1 Base "BirthType" "birth"
* birth.dateOfBirth 0..1 Base "PartialDateType" "dateOfBirth"
* birth.dateOfBirth.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* birth.dateOfBirth.format from DateTypeFormatVS (required)
* birth.dateOfBirth.value 1..1 string "value" "value"
* birth.placeOfBirthSweden 0..1 Base "PlaceOfBirthSwedenType" "placeOfBirthSweden"
* birth.placeOfBirthSweden.birthCountyCode 0..1 string "birthCountyCode" "birthCountyCode"
* birth.placeOfBirthSweden.birthParish 0..1 string "birthParish" "birthParish"
* birth.birthAbroad 0..1 Base "BirthAbroadType" "birthAbroad"
* birth.birthAbroad.placeOfBirthAbroad 0..1 string "placeOfBirthAbroad" "placeOfBirthAbroad"
* birth.birthAbroad.countryOfBirth 0..1 string "countryOfBirth" "countryOfBirth"
* relationship 0..* Base "RelationshipType" "relationship"
* relationship.relationshipId 1..1 Base "RelationshipIdType" "relationshipId"
* relationship.relationshipId.personalIdentity 0..1 IIType "personalIdentity" "personalIdentity"
* relationship.relationshipId.dateOfBirth 0..1 Base "PartialDateType" "dateOfBirth"
* relationship.relationshipId.dateOfBirth.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* relationship.relationshipId.dateOfBirth.format from DateTypeFormatVS (required)
* relationship.relationshipId.dateOfBirth.value 1..1 string "value" "value"
* relationship.relationshipType 1..1 string "relationshipType" "relationshipType"
* relationship.relationshipFromDate 0..1 Base "PartialDateType" "relationshipFromDate"
* relationship.relationshipFromDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* relationship.relationshipFromDate.format from DateTypeFormatVS (required)
* relationship.relationshipFromDate.value 1..1 string "value" "value"
* relationship.relationshipToDate 0..1 Base "PartialDateType" "relationshipToDate"
* relationship.relationshipToDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* relationship.relationshipToDate.format from DateTypeFormatVS (required)
* relationship.relationshipToDate.value 1..1 string "value" "value"
* relationship.name 0..1 Base "NameType" "name"
* relationship.name.givenNameIndicator 0..1 integer "givenNameIndicator" "givenNameIndicator"
* relationship.name.givenName 0..1 string "givenName" "givenName"
* relationship.name.middleName 0..1 string "middleName" "middleName"
* relationship.name.surname 0..1 string "surname" "surname"
* relationship.name.notificationName 0..1 string "notificationName" "notificationName"
* relationship.deregistration 0..1 Base "DeregistrationType" "deregistration"
* relationship.deregistration.deregistrationReasonCode 0..1 string "deregistrationReasonCode" "deregistrationReasonCode"
* relationship.deregistration.deregistrationDate 0..1 Base "PartialDateType" "deregistrationDate"
* relationship.deregistration.deregistrationDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* relationship.deregistration.deregistrationDate.format from DateTypeFormatVS (required)
* relationship.deregistration.deregistrationDate.value 1..1 string "value" "value"
* relationship.deregistration.foundDeadAtDate 0..1 Base "PartialDateType" "foundDeadAtDate"
* relationship.deregistration.foundDeadAtDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* relationship.deregistration.foundDeadAtDate.format from DateTypeFormatVS (required)
* relationship.deregistration.foundDeadAtDate.value 1..1 string "value" "value"
* relationship.status 0..1 string "status" "status"
* givenAddress 0..1 Base "ResidentialAddressType" "givenAddress"
* givenAddress.careOf 0..1 string "careOf" "careOf"
* givenAddress.postalAddress1 0..1 string "postalAddress1" "postalAddress1"
* givenAddress.postalAddress2 0..1 string "postalAddress2" "postalAddress2"
* givenAddress.postalCode 0..1 integer "postalCode" "postalCode"
* givenAddress.city 0..1 string "city" "city"
* deregistration 0..1 Base "DeregistrationType" "deregistration"
* deregistration.deregistrationReasonCode 0..1 string "deregistrationReasonCode" "deregistrationReasonCode"
* deregistration.deregistrationDate 0..1 Base "PartialDateType" "deregistrationDate"
* deregistration.deregistrationDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* deregistration.deregistrationDate.format from DateTypeFormatVS (required)
* deregistration.deregistrationDate.value 1..1 string "value" "value"
* deregistration.foundDeadAtDate 0..1 Base "PartialDateType" "foundDeadAtDate"
* deregistration.foundDeadAtDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* deregistration.foundDeadAtDate.format from DateTypeFormatVS (required)
* deregistration.foundDeadAtDate.value 1..1 string "value" "value"
* administrativeInformation 0..1 Base "AdministrativeInformationType" "administrativeInformation"
* administrativeInformation.categoryOfPerson 0..1 string "categoryOfPerson" "categoryOfPerson"
* administrativeInformation.accountCode 0..1 string "accountCode" "accountCode"
* administrativeInformation.comment 0..1 string "comment" "comment"
* confirmedIdentity 0..* Base "ConfirmedIdentityType" "confirmedIdentity"
* confirmedIdentity.typeOfIdentification 0..1 string "typeOfIdentification" "typeOfIdentification"
* confirmedIdentity.identificationNumber 0..1 string "identificationNumber" "identificationNumber"
* confirmedIdentity.issuersOfId 0..1 string "issuersOfId" "issuersOfId"
* confirmedIdentity.validDatePeriod 0..1 Base "DatePeriodType" "validDatePeriod"
* confirmedIdentity.validDatePeriod.start 0..1 date "start" "start"
* confirmedIdentity.validDatePeriod.end 0..1 date "end" "end"
* confirmedIdentity.attachmentId 0..* string "attachmentId" "attachmentId"
* confirmedIdentity.countryCode 0..1 string "countryCode" "countryCode"
* addressAbroad 0..1 Base "AddressAbroadType" "addressAbroad"
* addressAbroad.postalAddress1 0..1 string "postalAddress1" "postalAddress1"
* addressAbroad.postalAddress2 0..1 string "postalAddress2" "postalAddress2"
* addressAbroad.postalAddress3 0..1 string "postalAddress3" "postalAddress3"
* addressAbroad.countryCode 0..1 string "countryCode" "countryCode"
* addressAbroad.addressAbroadDate 0..1 Base "PartialDateType" "addressAbroadDate"
* addressAbroad.addressAbroadDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* addressAbroad.addressAbroadDate.format from DateTypeFormatVS (required)
* addressAbroad.addressAbroadDate.value 1..1 string "value" "value"
* addressAbroad.votingDate 0..1 Base "PartialDateType" "votingDate"
* addressAbroad.votingDate.format 1..1 code "format" "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD."
* addressAbroad.votingDate.format from DateTypeFormatVS (required)
* addressAbroad.votingDate.value 1..1 string "value" "value"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdatePersonRequestFieldDescriptions
