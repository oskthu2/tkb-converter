// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: CheckBlocks v4.0
// Genererad: 2026-09-26

Logical: CheckBlocks
Id: checkblocks
Title: "CheckBlocks — Response"
Description: """
  Logisk modell för svaret i CheckBlocks
  (urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksResponseType).
"""
Characteristics: #can-be-target
* checkBlocksResult 1..1 BackboneElement "checkBlocksResult" "Datatyp som innehåller resultatet från tjänsten CheckBlocks. Datatypen utökar datatypen Result."
  * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
    * resultCode 1..1 code "resultCode" "resultCode"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "resultText" "resultText"
  * checkResults 0..* BackboneElement "checkResults" "Datatyp som representerar ett svar från kontrollen av åtkomst till information."
    * checkResultStatus 1..1 code "checkResultStatus" "checkResultStatus Heter status i schemat."
    * checkResultStatus from CheckStatusVS (required)
    * rowNumber 1..1 integer "rowNumber" "rowNumber"
