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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The county/region code"
* personId 1..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* healthcareFacilityHSAId 1..1 string "healthcareFacilityHSAId" "healthcareFacilityHSAId"
* listingTypes 0..* BackboneElement "listingTypes" "listingTypes"
  * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
