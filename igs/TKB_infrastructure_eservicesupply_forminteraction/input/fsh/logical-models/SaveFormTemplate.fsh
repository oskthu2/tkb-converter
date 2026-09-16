// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: SaveFormTemplate v2.1
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: SaveFormTemplate
Id: saveformtemplate
Title: "SaveFormTemplate"
Description: """
  Logisk modell för tjänstekontraktet SaveFormTemplate
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormTemplate:2).
  Representerar responsens informationsstruktur — signalerar om sparandet av
  formulärmallen lyckades.
"""
Characteristics: #can-be-target

* resultCode 1..1 CodeableConcept "Resultatkod" "Signalerar status på operationen (OK, INFO, ERROR)."
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar" "Attribut för felsignalering. Skall kunna visas för slutanvändaren."

Logical: SaveFormTemplateRequest
Id: saveformtemplate-request
Title: "SaveFormTemplate — Request"
Description: "Logisk modell för requestparametrar i SaveFormTemplate."
Characteristics: #can-be-target

* formTemplate 1..1 BackboneElement "Formulärmall"
    """
    Objektet innehåller formulärmallen som ska sparas. Källdokumentet specificerar
    inte formulärmallens interna struktur i denna kontraktsbeskrivning (endast
    "Objektet innehåller formulärmallen"). Se det delade domänschemat
    (infrastructure_eservicesupply_forminteraction_2.1.xsd) för den fullständiga
    XSD-strukturen.
    """
