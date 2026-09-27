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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The county/region code"
* personId 1..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* newListingCounty 1..1 BackboneElement "newListingCounty" "newListingCounty"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* homeCounty 1..1 BackboneElement "homeCounty" "homeCounty"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* listingType 0..1 BackboneElement "listingType" "listingType"
  * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
