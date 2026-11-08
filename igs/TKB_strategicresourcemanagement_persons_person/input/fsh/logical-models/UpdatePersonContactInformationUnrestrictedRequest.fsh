// Elementen genereras ur UpdatePersonContactInformationUnrestrictedResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: UpdatePersonContactInformationUnrestricted v4.0
// Genererad: 2026-09-26

Logical: UpdatePersonContactInformationUnrestrictedRequest
Id: updatepersoncontactinformationunrestricted-request
Title: "UpdatePersonContactInformationUnrestricted — Request"
Description: """
  Logisk modell för begäran i UpdatePersonContactInformationUnrestricted
  (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* actor 1..1 Base "ActorType" "actor"
* actor.id 1..1 IIType "id" "id"
* actor.professional 0..1 Base "ProfessionalType" "professional"
* actor.professional.organizationId 1..1 IIType "organizationId" "organizationId"
* actor.updateTime 0..1 string "updateTime" "updateTime"
* personId 1..1 IIType "personId" "personId"
* versionToUpdate 0..1 string "versionToUpdate" "versionToUpdate"
* contactInformation 0..* Base "ContactInformationType" "contactInformation"
* contactInformation.contactType 1..1 string "contactType" "contactType"
* contactInformation.use 0..1 string "use" "use"
* contactInformation.value 0..1 string "value" "value"
* contactInformation.rank 0..1 integer "rank" "rank"
* contactInformation.comment 0..1 string "comment" "comment"
* contactInformation.period 0..1 Base "DatePeriodType" "period"
* contactInformation.period.start 0..1 date "start" "start"
* contactInformation.period.end 0..1 date "end" "end"
* contactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* contactPerson 0..* Base "ContactPersonType" "contactPerson"
* contactPerson.contactRelationshipType 1..1 string "contactRelationshipType" "contactRelationshipType"
* contactPerson.priorityOrder 0..1 integer "priorityOrder" "priorityOrder"
* contactPerson.givenName 0..1 string "givenName" "givenName"
* contactPerson.surName 0..1 string "surName" "surName"
* contactPerson.middleName 0..1 string "middleName" "middleName"
* contactPerson.contactPersonAddress 0..1 Base "ResidentialAddressType" "contactPersonAddress"
* contactPerson.contactPersonAddress.careOf 0..1 string "careOf" "careOf"
* contactPerson.contactPersonAddress.postalAddress1 0..1 string "postalAddress1" "postalAddress1"
* contactPerson.contactPersonAddress.postalAddress2 0..1 string "postalAddress2" "postalAddress2"
* contactPerson.contactPersonAddress.postalCode 0..1 integer "postalCode" "postalCode"
* contactPerson.contactPersonAddress.city 0..1 string "city" "city"
* contactPerson.contactPersonContactInformation 0..* Base "ContactInformationType" "contactPersonContactInformation"
* contactPerson.contactPersonContactInformation.contactType 1..1 string "contactType" "contactType"
* contactPerson.contactPersonContactInformation.use 0..1 string "use" "use"
* contactPerson.contactPersonContactInformation.value 0..1 string "value" "value"
* contactPerson.contactPersonContactInformation.rank 0..1 integer "rank" "rank"
* contactPerson.contactPersonContactInformation.comment 0..1 string "comment" "comment"
* contactPerson.contactPersonContactInformation.period 0..1 Base "DatePeriodType" "period"
* contactPerson.contactPersonContactInformation.period.start 0..1 date "start" "start"
* contactPerson.contactPersonContactInformation.period.end 0..1 date "end" "end"
* contactPerson.contactPersonContactInformation.digitalNotification 0..1 boolean "digitalNotification" "digitalNotification"
* optoutPaperNotification 0..1 boolean "optoutPaperNotification" "optoutPaperNotification"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdatePersonContactInformationUnrestrictedRequestFieldDescriptions
