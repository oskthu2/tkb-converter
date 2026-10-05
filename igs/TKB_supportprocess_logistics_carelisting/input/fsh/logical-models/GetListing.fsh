// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetListing v2.1
// Genererad: 2026-09-26

Logical: GetListing
Id: getlisting
Title: "GetListing — Response"
Description: """
  Logisk modell för svaret i GetListing
  (urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2, GetListingResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.1"
* listings 0..* BackboneElement "listings" "listings"
  * validFromDate 0..1 dateTime "validFromDate" "validFromDate"
  * validToDate 0..1 dateTime "validToDate" "validToDate"
  * listingType 1..1 BackboneElement "listingType" "listingType"
    * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
    * codeSystem 1..1 string "codeSystem" "codeSystem"
    * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
    * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
    * displayName 0..1 string "displayName" "displayName"
    * originalText 0..1 string "originalText" "originalText"
  * healthcareFacility 1..1 BackboneElement "healthcareFacility" "Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen."
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
  * healthcarePersonnel 0..1 BackboneElement "healthcarePersonnel" "healthcarePersonnel"
    * healthcarePersonnelId 1..1 string "healthcarePersonnelId" "healthcarePersonnelId Heter id i schemat."
    * healthcarePersonnelName 1..1 string "healthcarePersonnelName" "healthcarePersonnelName Heter name i schemat."
    * title 0..1 string "title" "title"
  * isInQueue 1..1 boolean "isInQueue" "isInQueue"
  * queuePosition 0..1 integer "queuePosition" " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
  * estimatedWaitInQueue 0..1 integer "estimatedWaitInQueue" " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
  * remainingChanges 0..1 integer "remainingChanges" " (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.)"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
