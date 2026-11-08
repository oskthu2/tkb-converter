// Elementen genereras ur CreateListingResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: CreateListing v2.0
// Genererad: 2026-09-26

Logical: CreateListingRequest
Id: createlisting-request
Title: "CreateListing — Request"
Description: """
  Logisk modell för begäran i CreateListing
  (urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* actor 1..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 code "actorType" "actorType Tillåtna värden: CITIZEN, GUARDIAN, REGION, PRIVATE_CAREGIVER, SELF_OWNED_CAREGIVER, HEALTHCARE_ADVISER."
* actor.actorType from ActorTypeVS (required)
* personId 1..1 IIType "personId" "personId"
* healthcareFacilityHSAId 1..1 string "healthcareFacilityHSAId" "healthcareFacilityHSAId"
* healthcareFacilityHSAId only HSAIdType
* listingType 1..1 CVType "listingType" "listingType"
* healthcarePersonnel 0..1 string "healthcarePersonnel" "healthcarePersonnel"
* healthcarePersonnel only HSAIdType
* addToQueue 0..1 boolean "addToQueue" "addToQueue"
* homeCounty 0..1 IIType "homeCounty" "homeCounty"
* newListingCounty 0..1 IIType "newListingCounty" "newListingCounty"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CreateListingRequestFieldDescriptions
