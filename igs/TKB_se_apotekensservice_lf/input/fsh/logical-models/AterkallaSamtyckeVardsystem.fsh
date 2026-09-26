// Genererad från XSD för se.apotekensservice.lf v7.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: AterkallaSamtyckeVardsystem v1.0
// Genererad: 2026-09-26

Logical: AterkallaSamtyckeVardsystem
Id: aterkallasamtyckevardsystem
Title: "AterkallaSamtyckeVardsystem — Response"
Description: """
  Logisk modell för svaret i AterkallaSamtyckeVardsystem
  (urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemResponseType).
"""
Characteristics: #can-be-target
* aterkallandedatum 0..1 dateTime "aterkallandedatum" "Datum då tillsvidaresamtycke återkallades. Ej angiven om samtycke saknades."
* samtycke 1..1 integer "samtycke" "Anger status efter återkallande. Möjliga värden är: 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats"
