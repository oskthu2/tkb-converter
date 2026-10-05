// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListingTypes v2.0
// Genererad: 2026-09-26

Logical: GetListingTypes
Id: getlistingtypes
Title: "GetListingTypes — Response"
Description: """
  Logisk modell för svaret i GetListingTypes
  (urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* listingTypes 0..* BackboneElement "listingTypes" "listingTypes"
  * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
