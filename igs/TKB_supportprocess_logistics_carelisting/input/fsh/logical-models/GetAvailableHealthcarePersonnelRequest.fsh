// Elementen genereras ur GetAvailableHealthcarePersonnelResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableHealthcarePersonnel v2.0
// Genererad: 2026-09-26

Logical: GetAvailableHealthcarePersonnelRequest
Id: getavailablehealthcarepersonnel-request
Title: "GetAvailableHealthcarePersonnel — Request"
Description: """
  Logisk modell för begäran i GetAvailableHealthcarePersonnel
  (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personId 1..1 IIType "personId" "personId"
* healthcareFacilityHSAId 1..1 string "healthcareFacilityHSAId" "healthcareFacilityHSAId"
* healthcareFacilityHSAId only HSAIdType
* listingTypes 0..* CVType "listingTypes" "listingTypes"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetAvailableHealthcarePersonnelRequestFieldDescriptions
