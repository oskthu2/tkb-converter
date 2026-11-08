// Elementen genereras ur GetFilesForOrderIdResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "4.0"
* multimedia 0..* Base "MultimediaType" "multimedia"
* multimedia.id 0..1 string "id" "id"
* multimedia.mediaType 1..1 string "mediaType" "mediaType"
* multimedia.value 0..1 base64Binary "value" "value"
* multimedia.reference 0..1 uri "reference" "reference"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFilesForOrderIdFieldDescriptions
