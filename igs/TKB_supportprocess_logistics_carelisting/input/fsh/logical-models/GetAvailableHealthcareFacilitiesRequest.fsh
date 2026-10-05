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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The county/region code"
* healthcareFacilities 0..* string "healthcareFacilities" "healthcareFacilities"
* listingTypes 0..* BackboneElement "listingTypes" "listingTypes"
  * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
