// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: RegistreraHkdbTransaktion v1.1
// Genererad: 2026-09-26

Logical: RegistreraHkdbTransaktion
Id: registrerahkdbtransaktion
Title: "RegistreraHkdbTransaktion — Response"
Description: """
  Logisk modell för svaret i RegistreraHkdbTransaktion
  (urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionResponseType).
"""
Characteristics: #can-be-target
* fpBalans 0..1 BackboneElement "fpBalans" "Nya ackumulerade brutto/netto belopp i kronor och ören för föregånde period."
  * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
  * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
* ipBalans 0..1 BackboneElement "ipBalans" "Nya ackumulerade brutto/netto belopp i kronor och ören för innevarande period."
  * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
  * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
* kpBalans 0..1 BackboneElement "kpBalans" "Nya ackumulerade brutto/netto belopp i kronor och ören för kommande period."
  * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
  * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
* resultat 1..1 integer "resultat" "Resultat av högkostnadsuppdatering. 1 - Transaktionen accepterad och registrerad."
