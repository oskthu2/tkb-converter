// Elementen genereras ur TaBortHkdbKontoResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* innevPeriod 0..1 Base "PeriodResponse" "Innevarande högkostnadsperiod."
* innevPeriod.balans 1..1 Base "BalansResponse" "Ackumulerad balans"
* innevPeriod.balans.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* innevPeriod.balans.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* innevPeriod.start 0..1 dateTime "Periodens startdatum." "Periodens startdatum."
* kommandePeriod 0..1 Base "PeriodResponse" "Kommande högkostnadsperiod."
* kommandePeriod.balans 1..1 Base "BalansResponse" "Ackumulerad balans"
* kommandePeriod.balans.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* kommandePeriod.balans.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* kommandePeriod.start 0..1 dateTime "Periodens startdatum." "Periodens startdatum."
* resultat 1..1 boolean "Resultat av kontouppdatering i HKDB. True - Konto borttaget." "Resultat av kontouppdatering i HKDB. True - Konto borttaget."
* samlingBort 1..1 boolean "Anger om samlingskonto tagits bort i samband med anropet. True - Samlingskonto borttaget." "Anger om samlingskonto tagits bort i samband med anropet. True - Samlingskonto borttaget."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert TaBortHkdbKontoFieldDescriptions
