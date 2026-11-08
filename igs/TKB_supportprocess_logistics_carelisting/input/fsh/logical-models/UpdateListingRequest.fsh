// Elementen genereras ur UpdateListingResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: UpdateListing v2.0
// Genererad: 2026-09-26

Logical: UpdateListingRequest
Id: updatelisting-request
Title: "UpdateListing — Request"
Description: """
  Logisk modell för begäran i UpdateListing
  (urn:riv:supportprocess:logistics:carelisting:UpdateListingResponder:2, UpdateListingType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personId 1..1 IIType "personId" "personId"
* newListingCounty 1..1 IIType "newListingCounty" "newListingCounty"
* homeCounty 1..1 IIType "homeCounty" "homeCounty"
* listingType 0..1 CVType "listingType" "listingType"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateListingRequestFieldDescriptions
