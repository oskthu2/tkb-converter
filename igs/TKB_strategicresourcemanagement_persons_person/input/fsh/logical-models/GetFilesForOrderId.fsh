// Genererad från XSD för strategicresourcemanagement.persons.person v5.1 (Genererat ur domänens XSD (tagg 5.1).; scripts/xsd_to_ig.py)
// Kontrakt: GetFilesForOrderId v4.0
// Genererad: 2026-09-26

Logical: GetFilesForOrderId
Id: getfilesfororderid
Title: "GetFilesForOrderId — Response"
Description: """
  Logisk modell för svaret i GetFilesForOrderId
  (urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdResponseType).
"""
Characteristics: #can-be-target
* multimedia 0..* BackboneElement "multimedia" "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL."
  * multimediaId 0..1 string "multimediaId" "multimediaId Heter id i schemat."
  * mediaType 1..1 string "mediaType" "mediaType"
  * multimediaValue 0..1 base64Binary "multimediaValue" "multimediaValue Heter value i schemat."
  * reference 0..1 uri "reference" "reference"
