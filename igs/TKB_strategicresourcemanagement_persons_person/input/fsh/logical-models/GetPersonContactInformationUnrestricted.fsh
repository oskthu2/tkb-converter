// Elementen genereras ur GetPersonContactInformationUnrestrictedResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetPersonContactInformationUnrestricted v4.0
// Genererad: 2026-09-26

Logical: GetPersonContactInformationUnrestricted
Id: getpersoncontactinformationunrestricted
Title: "GetPersonContactInformationUnrestricted — Response"
Description: """
  Logisk modell för svaret i GetPersonContactInformationUnrestricted
  (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* contactInformationRecord 0..1 Base "ContactInformationRecordType" "contactInformationRecord"
* contactInformationRecord.version 1..1 string "version" "version"
* contactInformationRecord.personId 1..1 IIType "personId" "personId"
* contactInformationRecord.contactInformation 0..* Base "ContactInformationType" "contactInformation"
* contactInformationRecord.contactInformation.contactType 1..1 string "contactType" "contactType"
* contactInformationRecord.contactInformation.use 0..1 string "use" "use"
* contactInformationRecord.contactInformation.value 0..1 string "value" "value"
* contactInformationRecord.contactInformation.rank 0..1 integer "rank" "rank"
* contactInformationRecord.contactInformation.comment 0..1 string "comment" "comment"
* contactInformationRecord.contactInformation.period 0..1 Base "DatePeriodType" "period"
* contactInformationRecord.contactInformation.period.start 0..1 date "start" "start"
* contactInformationRecord.contactInformation.period.end 0..1 date "end" "end"
* contactInformationRecord.contactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* contactInformationRecord.contactPerson 0..* Base "ContactPersonType" "contactPerson"
* contactInformationRecord.contactPerson.contactRelationshipType 1..1 string "contactRelationshipType" "contactRelationshipType"
* contactInformationRecord.contactPerson.priorityOrder 0..1 integer "priorityOrder" "priorityOrder"
* contactInformationRecord.contactPerson.givenName 0..1 string "givenName" "givenName"
* contactInformationRecord.contactPerson.surName 0..1 string "surName" "surName"
* contactInformationRecord.contactPerson.middleName 0..1 string "middleName" "middleName"
* contactInformationRecord.contactPerson.contactPersonAddress 0..1 Base "ResidentialAddressType" "contactPersonAddress"
* contactInformationRecord.contactPerson.contactPersonAddress.careOf 0..1 string "careOf" "careOf"
* contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1 0..1 string "postalAddress1" "postalAddress1"
* contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2 0..1 string "postalAddress2" "postalAddress2"
* contactInformationRecord.contactPerson.contactPersonAddress.postalCode 0..1 integer "postalCode" "postalCode"
* contactInformationRecord.contactPerson.contactPersonAddress.city 0..1 string "city" "city"
* contactInformationRecord.contactPerson.contactPersonContactInformation 0..* Base "ContactInformationType" "contactPersonContactInformation"
* contactInformationRecord.contactPerson.contactPersonContactInformation.contactType 1..1 string "contactType" "contactType"
* contactInformationRecord.contactPerson.contactPersonContactInformation.use 0..1 string "use" "use"
* contactInformationRecord.contactPerson.contactPersonContactInformation.value 0..1 string "value" "value"
* contactInformationRecord.contactPerson.contactPersonContactInformation.rank 0..1 integer "rank" "rank"
* contactInformationRecord.contactPerson.contactPersonContactInformation.comment 0..1 string "comment" "comment"
* contactInformationRecord.contactPerson.contactPersonContactInformation.period 0..1 Base "DatePeriodType" "period"
* contactInformationRecord.contactPerson.contactPersonContactInformation.period.start 0..1 date "start" "start"
* contactInformationRecord.contactPerson.contactPersonContactInformation.period.end 0..1 date "end" "end"
* contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* contactInformationRecord.protectedPersonIndicator 1..1 boolean "protectedPersonIndicator" "protectedPersonIndicator"
* contactInformationRecord.protectedPopulationRecord 0..1 boolean "protectedPopulationRecord" "protectedPopulationRecord"
* contactInformationRecord.optoutPaperNotification 0..1 boolean "optoutPaperNotification" "optoutPaperNotification"
* contactInformationRecord.updatePersonContactInformationActor 0..1 Base "ActorType" "updatePersonContactInformationActor"
* contactInformationRecord.updatePersonContactInformationActor.id 1..1 IIType "id" "id"
* contactInformationRecord.updatePersonContactInformationActor.professional 0..1 Base "ProfessionalType" "professional"
* contactInformationRecord.updatePersonContactInformationActor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* contactInformationRecord.updatePersonContactInformationActor.updateTime 0..1 string "updateTime" "updateTime"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPersonContactInformationUnrestrictedFieldDescriptions
