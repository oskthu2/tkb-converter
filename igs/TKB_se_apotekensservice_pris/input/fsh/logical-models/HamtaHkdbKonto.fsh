// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaHkdbKonto v1.0
// Genererad: 2026-09-26

Logical: HamtaHkdbKonto
Id: hamtahkdbkonto
Title: "HamtaHkdbKonto — Response"
Description: """
  Logisk modell för svaret i HamtaHkdbKonto
  (urn:riv:se.apotekensservice:pris:HamtaHkdbKontoResponder:1, HamtaHkdbKontoResponseType).
"""
Characteristics: #can-be-target
* ansluten 1..1 boolean "ansluten" "Personens högkostnadsstatus. False - Ej ansluten True - Ansluten"
* foregPeriod 0..1 BackboneElement "foregPeriod" "Föregående högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar."
  * balans 1..1 BackboneElement "balans" "Ackumulerad balans"
    * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
    * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
  * start 0..1 dateTime "start" "Periodens startdatum."
* formansNiva 0..1 integer "formansNiva" "Kundens aktuella förmånsnivå i procent."
* huvudPersNr 0..1 string "huvudPersNr" "Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas."
* innevPeriod 0..1 BackboneElement "innevPeriod" "Innevarande högkostnadsperiod. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar."
  * balans 1..1 BackboneElement "balans" "Ackumulerad balans"
    * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
    * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
  * start 0..1 dateTime "start" "Periodens startdatum."
* kommandePeriod 0..1 BackboneElement "kommandePeriod" "Kommande högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen kommande period existerar."
  * balans 1..1 BackboneElement "balans" "Ackumulerad balans"
    * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
    * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
  * start 0..1 dateTime "start" "Periodens startdatum."
* kvarTillFrikort 0..1 BackboneElement "kvarTillFrikort" "Nettobelopp i kronor och ören som återstår innan kunden får frikort. Saknar värde om personen ej är ansluten."
  * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
  * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
* persNr 1..1 string "persNr" "Personnummer för den som sökningen gäller."
