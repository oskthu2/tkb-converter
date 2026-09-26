// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: TaBortHkdbKonto v1.0
// Genererad: 2026-09-26

Logical: TaBortHkdbKonto
Id: taborthkdbkonto
Title: "TaBortHkdbKonto — Response"
Description: """
  Logisk modell för svaret i TaBortHkdbKonto
  (urn:riv:se.apotekensservice:pris:TaBortHkdbKontoResponder:1, TaBortHkdbKontoResponseType).
"""
Characteristics: #can-be-target
* innevPeriod 0..1 BackboneElement "innevPeriod" "Innevarande högkostnadsperiod."
  * balans 1..1 BackboneElement "balans" "Ackumulerad balans"
    * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
    * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
  * start 0..1 dateTime "start" "Periodens startdatum."
* kommandePeriod 0..1 BackboneElement "kommandePeriod" "Kommande högkostnadsperiod."
  * balans 1..1 BackboneElement "balans" "Ackumulerad balans"
    * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
    * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
  * start 0..1 dateTime "start" "Periodens startdatum."
* resultat 1..1 boolean "resultat" "Resultat av kontouppdatering i HKDB. True - Konto borttaget."
* samlingBort 1..1 boolean "samlingBort" "Anger om samlingskonto tagits bort i samband med anropet. True - Samlingskonto borttaget."
