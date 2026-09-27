// Genererad från XSD för informationsecurity.auditing.log v2.0.8 (Genererad ur scheman i riv.informationsecurity.auditing.log, tagg 2.0.8; scripts/xsd_to_ig.py)
// Kontrakt: StoreLog v2.0
// Genererad: 2026-09-26

Logical: StoreLog
Id: storelog
Title: "StoreLog — Response"
Description: """
  Logisk modell för svaret i StoreLog
  (urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogResponseType).
"""
Characteristics: #can-be-target
* result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
  * resultCode 1..1 code "resultCode" "resultCode"
  * resultCode from ResultCodeVS (required)
  * resultText 0..1 string "resultText" "resultText"
