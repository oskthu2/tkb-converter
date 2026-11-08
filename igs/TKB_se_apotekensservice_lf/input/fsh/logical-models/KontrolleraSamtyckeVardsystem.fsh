// Elementen genereras ur KontrolleraSamtyckeVardsystemResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* avliden 1..1 boolean "Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt." "Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt."
* samtycke 1..1 integer "samtycke" "Anger om aktuell förskrivare har samtycke av patient. Möjliga värden är: 0 = Samtycke att läsa Läkemedelsförteckningen saknas 1= Samtycke att läsa Läkemedelsförteckningen finns 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats"
* samtyckesgivare 1..1 string "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas." "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas."
* statusdatum 0..1 dateTime "Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas." "Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert KontrolleraSamtyckeVardsystemFieldDescriptions
