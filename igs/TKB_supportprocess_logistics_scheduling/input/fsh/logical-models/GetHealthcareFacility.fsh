// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetHealthcareFacility v2.0
// Genererad: 2026-09-26

Logical: GetHealthcareFacility
Id: gethealthcarefacility
Title: "GetHealthcareFacility — Response"
Description: """
  Logisk modell för svaret i GetHealthcareFacility
  (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* healthcareFacility 1..1 BackboneElement "healthcareFacility" "healthcareFacility"
  * HSAId 1..1 BackboneElement "HSAId" "HSAId"
    * root 1..1 string "root" "root"
    * hSAIdExtension 1..1 string "hSAIdExtension" "hSAIdExtension Heter extension i schemat."
  * orgUnitName 0..1 string "orgUnitName" "orgUnitName Heter name i schemat."
  * alternativeLocation 0..1 string "alternativeLocation" "alternativeLocation"
  * information 0..* BackboneElement "information" "information"
    * header 1..1 string "header" "header"
    * description 0..1 string "description" "description"
    * link 0..1 uri "link" "link"
  * conditionToConfirm 0..* BackboneElement "conditionToConfirm" "conditionToConfirm"
    * header 1..1 string "header" "header"
    * description 0..1 string "description" "description"
    * link 0..1 uri "link" "link"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
