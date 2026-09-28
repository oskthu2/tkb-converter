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
* ansluten 1..1 boolean "ansluten" "Personens högkostnadsstatus. False - Konto ej skapat True - Konto skapat"
