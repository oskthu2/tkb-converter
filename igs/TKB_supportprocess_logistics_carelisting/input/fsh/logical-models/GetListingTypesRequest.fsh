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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The county/region code"
* personId 0..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* homeCountyCode 0..1 BackboneElement "homeCountyCode" "homeCountyCode"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
