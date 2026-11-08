// Elementen genereras ur AterkallaSamtyckeVardsystemResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* aterkallandedatum 0..1 dateTime "Datum då tillsvidaresamtycke återkallades. Ej angiven om samtycke saknades." "Datum då tillsvidaresamtycke återkallades. Ej angiven om samtycke saknades."
* samtycke 1..1 integer "Anger status efter återkallande. Möjliga värden är: 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats" "Anger status efter återkallande. Möjliga värden är: 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert AterkallaSamtyckeVardsystemFieldDescriptions
