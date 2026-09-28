// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontrolleraForman v1.1
// Genererad: 2026-09-26

Logical: KontrolleraForman
Id: kontrolleraforman
Title: "KontrolleraForman — Response"
Description: """
  Logisk modell för svaret i KontrolleraForman
  (urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanResponseType).
"""
Characteristics: #can-be-target
* formansLista 1..* BackboneElement "formansLista" "Lista med förmånskoder per artikel."
  * formanskod 1..1 string "formanskod" "Förmånskod R, U, L, eller F"
  * formansInfoId 1..1 string "formansInfoId" "Id som representerar det id som var satt i motsvarande ArtikelIdentiteterTo. Det vill säga antingen GTIN, Förpackningsid eller Varunr beroende på vad som frågats efter. Heter id i schemat."
