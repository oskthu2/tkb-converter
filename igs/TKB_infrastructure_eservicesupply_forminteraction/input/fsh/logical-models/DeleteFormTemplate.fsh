// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: DeleteFormTemplate v1.0
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Logical: DeleteFormTemplate
Id: deleteformtemplate
Title: "DeleteFormTemplate"
Description: """
  Logisk modell för tjänstekontraktet DeleteFormTemplate
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:DeleteFormTemplate:1).
  Representerar responsens informationsstruktur — signalerar om makuleringen av
  formulärmallen lyckades.
"""
Characteristics: #can-be-target

* resultCode 1..1 CodeableConcept "Resultatkod" "Signalerar status på operationen (OK, INFO, ERROR)."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "Kommentar" "Attribut för felsignalering. Skall kunna visas för slutanvändaren."

Logical: DeleteFormTemplateRequest
Id: deleteformtemplate-request
Title: "DeleteFormTemplate — Request"
Description: "Logisk modell för requestparametrar i DeleteFormTemplate."
Characteristics: #can-be-target

* templateId 1..1 string "Mall-id" "Unikt id för formulärmallen."
* templateVersion 1..1 integer "Mallversion" "Version av formulärmall som ska makuleras."
* healthCareFacilityUnit 1..1 Identifier "Vårdenhet" "HSA-id för den vårdenhet som är ägare till formulärmallen."
