// Elementen genereras ur GetPatientContactInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för masterdata.citizen.patient v1.0 (Genererad ur scheman i riv.masterdata.citizen.patient (master, commit efa4099dabb2); scripts/xsd_to_ig.py)
// Kontrakt: GetPatientContactInformation v1.0
// Genererad: 2026-09-26

Logical: GetPatientContactInformation
Id: getpatientcontactinformation
Title: "GetPatientContactInformation — Response"
Description: """
  Logisk modell för svaret i GetPatientContactInformation
  (urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* lastUpdatedBy 0..1 IIType "lastUpdatedBy" "lastUpdatedBy"
* lastUpdatedTime 0..1 string "lastUpdatedTime" "lastUpdatedTime"
* lastUpdatedTime only TimeStampType
* patient 0..1 Base "PatientType" "patient"
* patient.id 1..1 IIType "id" "id"
* patient.comment 0..1 string "comment" "comment"
* contactInformation 0..* Base "ContactInfoType" "contactInformation"
* contactInformation.telecomType 1..1 code "telecomType" "telecomType Tillåtna värden: 1, 2, 3, 4, 5."
* contactInformation.telecomType from TypeOfTelecomPatientVS (required)
* contactInformation.contactType 0..1 code "contactType" "contactType Tillåtna värden: 1, 2."
* contactInformation.contactType from TypeOfContactVS (required)
* contactInformation.numberOrElectronicalAddress 1..1 string "numberOrElectronicalAddress" "numberOrElectronicalAddress"
* contactInformation.comment 0..1 string "comment" "comment"
* contactInformation.otherContactInfo 0..1 Base "OtherContactInfoType" "otherContactInfo"
* contactInformation.otherContactInfo.completingContactInfo 1..1 string "completingContactInfo" "completingContactInfo"
* contactPerson 0..* Base "ContactPersonType" "contactPerson"
* contactPerson.relationType 1..1 Base "ContactRelationType" "relationType"
* contactPerson.relationType.code 1..1 string "code" "code"
* contactPerson.relationType.codeSystem 1..1 code "codeSystem" "codeSystem Tillåtna värden: 1.2.752.129.2.2.1.24, 1.2.752.129.2.2.1.8, 1.2.752.129.2.2.1.23."
* contactPerson.relationType.codeSystem from TypeOfContactRelationCodeSystemVS (required)
* contactPerson.rank 1..1 integer "rank" "rank"
* contactPerson.otherContactInfo 0..1 Base "OtherContactInfoType" "otherContactInfo"
* contactPerson.otherContactInfo.completingContactInfo 1..1 string "completingContactInfo" "completingContactInfo"
* contactPerson.firstName 1..1 string "firstName" "firstName"
* contactPerson.lastName 1..1 string "lastName" "lastName"
* contactPerson.contactPersonAddress 0..1 Base "AddressType" "contactPersonAddress"
* contactPerson.contactPersonAddress.co 0..1 string "co" "co"
* contactPerson.contactPersonAddress.address 1..1 string "address" "address"
* contactPerson.contactPersonAddress.zipCode 1..1 string "zipCode" "zipCode"
* contactPerson.contactPersonAddress.city 1..1 string "city" "city"
* contactPerson.contactInformation 0..* Base "ContactPersonTelephoneContactInfoType" "contactInformation"
* contactPerson.contactInformation.telecomType 1..1 code "telecomType" "telecomType Tillåtna värden: 1, 2, 3, 4."
* contactPerson.contactInformation.telecomType from TypeOfTelecomContactPersonVS (required)
* contactPerson.contactInformation.contactType 0..1 code "contactType" "contactType Tillåtna värden: 1, 2."
* contactPerson.contactInformation.contactType from TypeOfContactVS (required)
* contactPerson.contactInformation.numberOrElectronicalAddress 1..1 string "numberOrElectronicalAddress" "numberOrElectronicalAddress"
* contactPerson.contactInformation.comment 0..1 string "comment" "comment"
* contactPerson.contactInformation.otherContactInfo 0..1 Base "OtherContactInfoType" "otherContactInfo"
* contactPerson.contactInformation.otherContactInfo.completingContactInfo 1..1 string "completingContactInfo" "completingContactInfo"
* contactPerson.comment 0..1 string "comment" "comment"
* contactPerson.periodOfValidity 0..1 DatePeriodType "periodOfValidity" "periodOfValidity"
* contactPerson.contactAllowed 1..1 boolean "contactAllowed" "contactAllowed"
* contactPerson.contactTime 0..1 string "contactTime" "contactTime"
* version 0..1 string "version" "version"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetPatientContactInformationFieldDescriptions
