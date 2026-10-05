// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: GetLogsByOrder v1.0
// Genererad: 2026-09-26

Logical: GetLogsByOrder
Id: getlogsbyorder
Title: "GetLogsByOrder — Response"
Description: """
  Logisk modell för svaret i GetLogsByOrder
  (urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderResponseType).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
  * resultCode 1..1 code "resultCode" "resultCode"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "resultText" "resultText"
* orderId 0..1 string "orderId" "orderId"
