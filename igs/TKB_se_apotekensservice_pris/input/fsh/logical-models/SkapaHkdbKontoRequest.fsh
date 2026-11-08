// Elementen genereras ur SkapaHkdbKontoResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkapaHkdbKonto v4.0
// Genererad: 2026-09-26

Logical: SkapaHkdbKontoRequest
Id: skapahkdbkonto-request
Title: "SkapaHkdbKonto — Request"
Description: """
  Logisk modell för begäran i SkapaHkdbKonto
  (urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* huvudPersNr 0..1 string "Personnummer för eventuell huvudperson." "Personnummer för eventuell huvudperson."
* klientinformation 1..1 Base "KlientinformationRequest" "Objekt innehållande information om anropande klientsystem."
* klientinformation.anvandare 1..1 string "Unikt användarid i anropande system." "Unikt användarid i anropande system."
* klientinformation.session 1..1 string "Sessionens id i anropande system." "Sessionens id i anropande system."
* klientinformation.system 1..1 string "GLN-kod för anropande system." "GLN-kod för anropande system."
* periodBrutto 0..1 decimal "Ackumulerat bruttobelopp i kronor och ören. Från och med version 10.3 ersätter periodBrutto periodNetto." "Ackumulerat bruttobelopp i kronor och ören. Från och med version 10.3 ersätter periodBrutto periodNetto."
* periodStart 0..1 dateTime "Eventuellt startdatum för innevarande högkostnadsperiod." "Eventuellt startdatum för innevarande högkostnadsperiod."
* persNr 1..1 string "Personnummer för den som ska anslutas." "Personnummer för den som ska anslutas."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SkapaHkdbKontoRequestFieldDescriptions
