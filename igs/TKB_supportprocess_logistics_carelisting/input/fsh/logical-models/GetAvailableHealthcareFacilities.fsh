// Elementen genereras ur GetAvailableHealthcareFacilitiesResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableHealthcareFacilities v2.1
// Genererad: 2026-09-26

Logical: GetAvailableHealthcareFacilities
Id: getavailablehealthcarefacilities
Title: "GetAvailableHealthcareFacilities — Response"
Description: """
  Logisk modell för svaret i GetAvailableHealthcareFacilities
  (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.1"
* healthcareFacilities 0..* Base "HealthcareFacilityType" "healthcareFacilities"
* healthcareFacilities.id 1..1 string "id" "id"
* healthcareFacilities.id only HSAIdType
* healthcareFacilities.name 1..1 string "Namn på vårdenheten." "Namn på vårdenheten."
* healthcareFacilities.hasQueue 1..1 boolean "hasQueue" "hasQueue"
* healthcareFacilities.supportedListingTypes 0..* CVType "supportedListingTypes" "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
* healthcareFacilities.supportsHealthcarePersonnel 1..1 boolean "supportsHealthcarePersonnel" "supportsHealthcarePersonnel"
* healthcareFacilities.queueLength 0..1 integer "queueLength" "queueLength"
* healthcareFacilities.estimatedWaitInQueue 0..1 integer "estimatedWaitInQueue" "estimatedWaitInQueue"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableHealthcareFacilitiesFieldDescriptions
