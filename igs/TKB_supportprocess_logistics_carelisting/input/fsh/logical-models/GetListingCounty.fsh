// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListingCounty v2.0
// Genererad: 2026-09-26

Logical: GetListingCounty
Id: getlistingcounty
Title: "GetListingCounty — Response"
Description: """
  Logisk modell för svaret i GetListingCounty
  (urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2, GetListingCountyResponseType).
"""
Characteristics: #can-be-target
* listingCounties 0..* BackboneElement "listingCounties" "listingCounties"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
