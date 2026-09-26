// Genererad från XSD för se.apotekensservice.lf v7.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontrolleraSamtyckeVardsystem v1.0
// Genererad: 2026-09-26

Logical: KontrolleraSamtyckeVardsystem
Id: kontrollerasamtyckevardsystem
Title: "KontrolleraSamtyckeVardsystem — Response"
Description: """
  Logisk modell för svaret i KontrolleraSamtyckeVardsystem
  (urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemResponseType).
"""
Characteristics: #can-be-target
* avliden 1..1 boolean "avliden" "Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt."
* samtycke 1..1 integer "samtycke" "Anger om aktuell förskrivare har samtycke av patient. Möjliga värden är: 0 = Samtycke att läsa Läkemedelsförteckningen saknas 1= Samtycke att läsa Läkemedelsförteckningen finns 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats"
* samtyckesgivare 1..1 string "samtyckesgivare" "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas."
* statusdatum 0..1 dateTime "statusdatum" "Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas."
