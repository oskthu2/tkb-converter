// Elementen genereras ur DeleteFormTemplateResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"

Logical: DeleteFormTemplateRequest
Id: deleteformtemplate-request
Title: "DeleteFormTemplate — Request"
Description: "Logisk modell för requestparametrar i DeleteFormTemplate."
Characteristics: #can-be-target

* ^version = "1.0"
* templateId 1..1 string "templateId" "templateId"
* templateVersion 1..1 integer "templateVersion" "templateVersion"
* healthCareFacilityUnit 1..1 string "healthCareFacilityUnit" "healthCareFacilityUnit"
