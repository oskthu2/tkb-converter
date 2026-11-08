// Elementen genereras ur GetListingTypesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListingTypes v2.0
// Genererad: 2026-09-26

Logical: GetListingTypesRequest
Id: getlistingtypes-request
Title: "GetListingTypes — Request"
Description: """
  Logisk modell för begäran i GetListingTypes
  (urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personId 0..1 IIType "personId" "personId"
* homeCountyCode 0..1 IIType "homeCountyCode" "homeCountyCode"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetListingTypesRequestFieldDescriptions
