// Elementen genereras ur GetListingResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListing v2.1
// Genererad: 2026-09-26

Logical: GetListingRequest
Id: getlisting-request
Title: "GetListing — Request"
Description: """
  Logisk modell för begäran i GetListing
  (urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.1"
* actor 1..1 Base "ActorType" "actor"
* actor.actorId 1..1 IIType "actorId" "actorId"
* actor.actorType 1..1 code "actorType" "actorType Tillåtna värden: CITIZEN, GUARDIAN, REGION, PRIVATE_CAREGIVER, SELF_OWNED_CAREGIVER, HEALTHCARE_ADVISER."
* actor.actorType from ActorTypeVS (required)
* personId 1..1 IIType "personId" "personId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetListingRequestFieldDescriptions
