// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableHealthcareFacilities v2.1
// Genererad: 2026-09-26

Logical: GetAvailableHealthcareFacilities
Id: getavailablehealthcarefacilities
Title: "GetAvailableHealthcareFacilities — Response"
Description: """
  Logisk modell för svaret i GetAvailableHealthcareFacilities
  (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.1"
* healthcareFacilities 0..* BackboneElement "healthcareFacilities" "Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen."
  * healthcareFacilityId 1..1 string "healthcareFacilityId" "healthcareFacilityId Heter id i schemat."
  * healthcareFacilityName 1..1 string "healthcareFacilityName" "Namn på vårdenheten. Heter name i schemat."
  * hasQueue 1..1 boolean "hasQueue" "hasQueue"
  * supportedListingTypes 0..* BackboneElement "supportedListingTypes" "Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i."
    * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
    * codeSystem 1..1 string "codeSystem" "codeSystem"
    * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
    * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
    * displayName 0..1 string "displayName" "displayName"
    * originalText 0..1 string "originalText" "originalText"
  * supportsHealthcarePersonnel 1..1 boolean "supportsHealthcarePersonnel" "supportsHealthcarePersonnel"
  * queueLength 0..1 integer "queueLength" " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
  * estimatedWaitInQueue 0..1 integer "estimatedWaitInQueue" " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
