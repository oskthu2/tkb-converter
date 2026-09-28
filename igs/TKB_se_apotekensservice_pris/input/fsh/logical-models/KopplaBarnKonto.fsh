// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KopplaBarnKonto v4.0
// Genererad: 2026-09-26

Logical: KopplaBarnKonto
Id: kopplabarnkonto
Title: "KopplaBarnKonto — Response"
Description: """
  Logisk modell för svaret i KopplaBarnKonto
  (urn:riv:se.apotekensservice:pris:KopplaBarnKontoResponder:4, KopplaBarnKontoResponseType).
"""
Characteristics: #can-be-target
* kopplaBarnKontoStatus 1..1 integer "kopplaBarnKontoStatus" "Status för koppling av barnkonto Möjliga värden är: 1 - Anslutning OK. 2 - Omkoppling OK. 3 - Frikoppling OK. Heter status i schemat."
