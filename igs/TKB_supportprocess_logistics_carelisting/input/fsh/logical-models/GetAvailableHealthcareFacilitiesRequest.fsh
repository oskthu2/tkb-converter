// Elementen genereras ur GetAvailableHealthcareFacilitiesResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableHealthcareFacilities v2.1
// Genererad: 2026-09-26

Logical: GetAvailableHealthcareFacilitiesRequest
Id: getavailablehealthcarefacilities-request
Title: "GetAvailableHealthcareFacilities — Request"
Description: """
  Logisk modell för begäran i GetAvailableHealthcareFacilities
  (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.1"
* healthcareFacilities 0..* string "healthcareFacilities" "healthcareFacilities"
* healthcareFacilities only HSAIdType
* listingTypes 0..* CVType "listingTypes" "listingTypes"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableHealthcareFacilitiesRequestFieldDescriptions
