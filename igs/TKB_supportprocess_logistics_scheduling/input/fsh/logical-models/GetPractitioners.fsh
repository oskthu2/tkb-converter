// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetPractitioners v2.0
// Genererad: 2026-09-26

Logical: GetPractitioners
Id: getpractitioners
Title: "GetPractitioners — Response"
Description: """
  Logisk modell för svaret i GetPractitioners
  (urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersResponseType).
"""
Characteristics: #can-be-target
* practitioner 0..* BackboneElement "practitioner" "practitioner"
  * HSAId 1..1 BackboneElement "HSAId" "HSAId"
    * root 1..1 string "root" "root"
    * hSAIdExtension 1..1 string "hSAIdExtension" "hSAIdExtension Heter extension i schemat."
  * firstName 1..1 string "firstName" "firstName"
  * lastName 1..1 string "lastName" "lastName"
  * title 0..1 string "title" "title"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
