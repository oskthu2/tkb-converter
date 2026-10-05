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
* result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
  * resultCode 1..1 code "resultCode" "resultCode"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "resultText" "resultText"
* multimedia 0..* BackboneElement "multimedia" "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL."
  * multimediaId 0..1 string "multimediaId" "multimediaId Heter id i schemat."
  * mediaType 1..1 string "mediaType" "mediaType"
  * multimediaValue 0..1 base64Binary "multimediaValue" "multimediaValue Heter value i schemat."
  * reference 0..1 uri "reference" "reference"
