// Elementen genereras ur GetListingResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListing v2.1
// Genererad: 2026-09-26

Logical: GetListing
Id: getlisting
Title: "GetListing — Response"
Description: """
  Logisk modell för svaret i GetListing
  (urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.1"
* listings 0..* Base "ListingHealthcareFacilityType" "listings"
* listings.validFromDate 0..1 dateTime "validFromDate" "validFromDate"
* listings.validToDate 0..1 dateTime "validToDate" "validToDate"
* listings.listingType 1..1 CVType "listingType" "listingType"
* listings.healthcareFacility 1..1 Base "HealthcareFacilityType" "healthcareFacility"
* listings.healthcareFacility.id 1..1 string "id" "id"
* listings.healthcareFacility.id only HSAIdType
* listings.healthcareFacility.name 1..1 string "Namn på vårdenheten." "Namn på vårdenheten."
* listings.healthcareFacility.hasQueue 1..1 boolean "hasQueue" "hasQueue"
* listings.healthcareFacility.supportedListingTypes 0..* CVType "supportedListingTypes" "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* listings.healthcareFacility.supportsHealthcarePersonnel 1..1 boolean "supportsHealthcarePersonnel" "supportsHealthcarePersonnel"
* listings.healthcareFacility.queueLength 0..1 integer "queueLength" "queueLength"
* listings.healthcareFacility.estimatedWaitInQueue 0..1 integer "estimatedWaitInQueue" "estimatedWaitInQueue"
* listings.healthcarePersonnel 0..1 Base "HealthcarePersonnelType" "healthcarePersonnel"
* listings.healthcarePersonnel.id 1..1 string "id" "id"
* listings.healthcarePersonnel.id only HSAIdType
* listings.healthcarePersonnel.name 1..1 string "name" "name"
* listings.healthcarePersonnel.title 0..1 string "title" "title"
* listings.isInQueue 1..1 boolean "isInQueue" "isInQueue"
* listings.queuePosition 0..1 integer "queuePosition" "queuePosition"
* listings.estimatedWaitInQueue 0..1 integer "estimatedWaitInQueue" "estimatedWaitInQueue"
* listings.remainingChanges 0..1 integer "remainingChanges" "remainingChanges"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetListingFieldDescriptions
