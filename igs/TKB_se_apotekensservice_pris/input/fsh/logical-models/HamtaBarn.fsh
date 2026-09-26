// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaBarn v1.0
// Genererad: 2026-09-26

Logical: HamtaBarn
Id: hamtabarn
Title: "HamtaBarn — Response"
Description: """
  Logisk modell för svaret i HamtaBarn
  (urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnResponseType).
"""
Characteristics: #can-be-target
* barn 1..* string "barn" "En lista med personnr för barnen."
