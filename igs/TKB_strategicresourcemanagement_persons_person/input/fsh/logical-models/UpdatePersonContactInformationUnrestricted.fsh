// Elementen genereras ur UpdatePersonContactInformationUnrestrictedResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UpdatePersonContactInformationUnrestricted v4.0
// Genererad: 2026-09-26

Logical: UpdatePersonContactInformationUnrestricted
Id: updatepersoncontactinformationunrestricted
Title: "UpdatePersonContactInformationUnrestricted — Response"
Description: """
  Logisk modell för svaret i UpdatePersonContactInformationUnrestricted
  (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* UpdatePersonContactInformationUnrestrictedResult 1..1 Base "UpdatePersonContactInformationResultType" "UpdatePersonContactInformationUnrestrictedResult"
* UpdatePersonContactInformationUnrestrictedResult.result 1..1 Base "ResultType" "result"
* UpdatePersonContactInformationUnrestrictedResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR."
* UpdatePersonContactInformationUnrestrictedResult.result.resultCode from ResultCodeVS (required)
* UpdatePersonContactInformationUnrestrictedResult.result.resultText 0..1 string "resultText" "resultText"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord 0..1 Base "ContactInformationRecordType" "contactInformationRecord"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.version 1..1 string "version" "version"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId 1..1 IIType "personId" "personId"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation 0..* Base "ContactInformationType" "contactInformation"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactType 1..1 string "contactType" "contactType"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.use 0..1 string "use" "use"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.value 0..1 string "value" "value"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.rank 0..1 integer "rank" "rank"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.comment 0..1 string "comment" "comment"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period 0..1 Base "DatePeriodType" "period"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.start 0..1 date "start" "start"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.end 0..1 date "end" "end"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson 0..* Base "ContactPersonType" "contactPerson"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactRelationshipType 1..1 string "contactRelationshipType" "contactRelationshipType"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.priorityOrder 0..1 integer "priorityOrder" "priorityOrder"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.givenName 0..1 string "givenName" "givenName"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.surName 0..1 string "surName" "surName"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.middleName 0..1 string "middleName" "middleName"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress 0..1 Base "ResidentialAddressType" "contactPersonAddress"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf 0..1 string "careOf" "careOf"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1 0..1 string "postalAddress1" "postalAddress1"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2 0..1 string "postalAddress2" "postalAddress2"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalCode 0..1 integer "postalCode" "postalCode"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.city 0..1 string "city" "city"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation 0..* Base "ContactInformationType" "contactPersonContactInformation"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType 1..1 string "contactType" "contactType"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.use 0..1 string "use" "use"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.value 0..1 string "value" "value"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.rank 0..1 integer "rank" "rank"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.comment 0..1 string "comment" "comment"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period 0..1 Base "DatePeriodType" "period"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start 0..1 date "start" "start"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end 0..1 date "end" "end"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.protectedPersonIndicator 1..1 boolean "protectedPersonIndicator" "protectedPersonIndicator"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.protectedPopulationRecord 0..1 boolean "protectedPopulationRecord" "protectedPopulationRecord"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.optoutPaperNotification 0..1 boolean "optoutPaperNotification" "optoutPaperNotification"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor 0..1 Base "ActorType" "updatePersonContactInformationActor"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.id 1..1 IIType "id" "id"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional 0..1 Base "ProfessionalType" "professional"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.updateTime 0..1 string "updateTime" "updateTime"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdatePersonContactInformationUnrestrictedFieldDescriptions
