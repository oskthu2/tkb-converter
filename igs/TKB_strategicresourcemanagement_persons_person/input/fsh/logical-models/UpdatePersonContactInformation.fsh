// Elementen genereras ur UpdatePersonContactInformationResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UpdatePersonContactInformation v4.0
// Genererad: 2026-09-26

Logical: UpdatePersonContactInformation
Id: updatepersoncontactinformation
Title: "UpdatePersonContactInformation — Response"
Description: """
  Logisk modell för svaret i UpdatePersonContactInformation
  (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* updatePersonContactInformationResult 1..1 Base "UpdatePersonContactInformationResultType" "updatePersonContactInformationResult"
* updatePersonContactInformationResult.result 1..1 Base "ResultType" "result"
* updatePersonContactInformationResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR."
* updatePersonContactInformationResult.result.resultCode from ResultCodeVS (required)
* updatePersonContactInformationResult.result.resultText 0..1 string "resultText" "resultText"
* updatePersonContactInformationResult.contactInformationRecord 0..1 Base "ContactInformationRecordType" "contactInformationRecord"
* updatePersonContactInformationResult.contactInformationRecord.version 1..1 string "version" "version"
* updatePersonContactInformationResult.contactInformationRecord.personId 1..1 IIType "personId" "personId"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation 0..* Base "ContactInformationType" "contactInformation"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.contactType 1..1 string "contactType" "contactType"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.use 0..1 string "use" "use"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.value 0..1 string "value" "value"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.rank 0..1 integer "rank" "rank"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.comment 0..1 string "comment" "comment"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.period 0..1 Base "DatePeriodType" "period"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.period.start 0..1 date "start" "start"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.period.end 0..1 date "end" "end"
* updatePersonContactInformationResult.contactInformationRecord.contactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson 0..* Base "ContactPersonType" "contactPerson"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactRelationshipType 1..1 string "contactRelationshipType" "contactRelationshipType"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.priorityOrder 0..1 integer "priorityOrder" "priorityOrder"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.givenName 0..1 string "givenName" "givenName"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.surName 0..1 string "surName" "surName"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.middleName 0..1 string "middleName" "middleName"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress 0..1 Base "ResidentialAddressType" "contactPersonAddress"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf 0..1 string "careOf" "careOf"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1 0..1 string "postalAddress1" "postalAddress1"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2 0..1 string "postalAddress2" "postalAddress2"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalCode 0..1 integer "postalCode" "postalCode"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.city 0..1 string "city" "city"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation 0..* Base "ContactInformationType" "contactPersonContactInformation"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType 1..1 string "contactType" "contactType"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.use 0..1 string "use" "use"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.value 0..1 string "value" "value"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.rank 0..1 integer "rank" "rank"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.comment 0..1 string "comment" "comment"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period 0..1 Base "DatePeriodType" "period"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start 0..1 date "start" "start"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end 0..1 date "end" "end"
* updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* updatePersonContactInformationResult.contactInformationRecord.protectedPersonIndicator 1..1 boolean "protectedPersonIndicator" "protectedPersonIndicator"
* updatePersonContactInformationResult.contactInformationRecord.protectedPopulationRecord 0..1 boolean "protectedPopulationRecord" "protectedPopulationRecord"
* updatePersonContactInformationResult.contactInformationRecord.optoutPaperNotification 0..1 boolean "optoutPaperNotification" "optoutPaperNotification"
* updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor 0..1 Base "ActorType" "updatePersonContactInformationActor"
* updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.id 1..1 IIType "id" "id"
* updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional 0..1 Base "ProfessionalType" "professional"
* updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.updateTime 0..1 string "updateTime" "updateTime"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdatePersonContactInformationFieldDescriptions
