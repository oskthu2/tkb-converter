// Elementen genereras ur HamtaHkdbKontoResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* ansluten 1..1 boolean "Personens högkostnadsstatus. False - Ej ansluten True - Ansluten" "Personens högkostnadsstatus. False - Ej ansluten True - Ansluten"
* foregPeriod 0..1 Base "PeriodResponse" "Föregående högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar."
* foregPeriod.balans 1..1 Base "BalansResponse" "Ackumulerad balans"
* foregPeriod.balans.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* foregPeriod.balans.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* foregPeriod.start 0..1 dateTime "Periodens startdatum." "Periodens startdatum."
* formansNiva 0..1 integer "Kundens aktuella förmånsnivå i procent." "Kundens aktuella förmånsnivå i procent."
* huvudPersNr 0..1 string "Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas." "Personnummer för eventuell huvudperson (vårdnadshavare). Saknar värde om huvudperson saknas."
* innevPeriod 0..1 Base "PeriodResponse" "Innevarande högkostnadsperiod. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen föregående period existerar."
* innevPeriod.balans 1..1 Base "BalansResponse" "Ackumulerad balans"
* innevPeriod.balans.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* innevPeriod.balans.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* innevPeriod.start 0..1 dateTime "Periodens startdatum." "Periodens startdatum."
* kommandePeriod 0..1 Base "PeriodResponse" "Kommande högkostnadsperiods startdatum. Saknar värde om personen ej är ansluten till högkostnadstrappan (status 0) eller om ingen kommande period existerar."
* kommandePeriod.balans 1..1 Base "BalansResponse" "Ackumulerad balans"
* kommandePeriod.balans.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* kommandePeriod.balans.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* kommandePeriod.start 0..1 dateTime "Periodens startdatum." "Periodens startdatum."
* kvarTillFrikort 0..1 Base "BalansResponse" "Nettobelopp i kronor och ören som återstår innan kunden får frikort. Saknar värde om personen ej är ansluten."
* kvarTillFrikort.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* kvarTillFrikort.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* persNr 1..1 string "Personnummer för den som sökningen gäller." "Personnummer för den som sökningen gäller."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaHkdbKontoFieldDescriptions
