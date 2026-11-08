// Elementen genereras ur GetFilesForOrderIdResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetFilesForOrderId v1.0
// Genererad: 2026-09-26

Logical: GetFilesForOrderId
Id: getfilesfororderid
Title: "GetFilesForOrderId — Response"
Description: """
  Logisk modell för svaret i GetFilesForOrderId
  (urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "resultText" "resultText"
* multimedia 0..* Base "MultimediaType" "multimedia"
* multimedia.id 0..1 string "id" "id"
* multimedia.mediaType 1..1 string "mediaType" "mediaType"
* multimedia.value 0..1 base64Binary "value" "value"
* multimedia.reference 0..1 uri "reference" "reference"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFilesForOrderIdFieldDescriptions
