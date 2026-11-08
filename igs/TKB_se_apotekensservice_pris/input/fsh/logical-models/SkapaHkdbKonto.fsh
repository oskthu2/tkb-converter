// Elementen genereras ur SkapaHkdbKontoResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkapaHkdbKonto v4.0
// Genererad: 2026-09-26

Logical: SkapaHkdbKonto
Id: skapahkdbkonto
Title: "SkapaHkdbKonto — Response"
Description: """
  Logisk modell för svaret i SkapaHkdbKonto
  (urn:riv:se.apotekensservice:pris:SkapaHkdbKontoResponder:4, SkapaHkdbKontoResponseType).
"""
Characteristics: #can-be-target

* ^version = "4.0"
* ansluten 1..1 boolean "Personens högkostnadsstatus. False - Konto ej skapat True - Konto skapat" "Personens högkostnadsstatus. False - Konto ej skapat True - Konto skapat"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SkapaHkdbKontoFieldDescriptions
