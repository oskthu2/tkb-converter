// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: GetFormTemplate v2.1
// Genererad: 2026-05-19

Logical: GetFormTemplate
Id: getformtemplate
Title: "GetFormTemplate"
Description: """
  Logisk modell för tjänstekontraktet GetFormTemplate
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplate:2).
  Representerar responsens informationsstruktur — returnerar en eller flera formulärmallar.
"""
Characteristics: #can-be-target

* formTemplates 0..* BackboneElement "Formulärmallar (FormTemplateType)" "De hämtade formulärmallarna."
  * templateId 1..1 string "Mall-id" "Typ av formulär. Kodverk för standardiserade id."
  * templateVersion 1..1 integer "Mallens version" "Versionsnummer för formulärmallen."
  * healthcare_facility_CareUnit 0..1 Identifier "Vårdenhetens HSA-id" "Ägare till formulärmallen."
  * anonymousForm 0..1 boolean "Anonym formulär" "Styr huruvida formulärmotorn stöder anonym användning av formuläret."
  * category 1..1 CodeableConcept "Formulärkategori" "Formulärets kategori."
  * category from FormCategoryVS (required)
  * publishStatus 1..1 CodeableConcept "Publiceringsstatus" "Mallens publiceringsstatus."
  * publishStatus from PublishStatusVS (required)
  * mandatory 1..1 boolean "Obligatorisk" "Indikerar om formuläret är obligatoriskt."
  * language 1..1 string "Språk" "Formulärets språk, t.ex. swe eller eng."
  * formCompleteText 0..1 string "Avslutningstext" "Text som visas när formuläret är besvarat."

Logical: GetFormTemplateRequest
Id: getformtemplate-request
Title: "GetFormTemplate — Request"
Description: "Logisk modell för requestparametrar i GetFormTemplate."
Characteristics: #can-be-target

// ASSUME: Både healthcare_facility_CareUnit och templateId är 0..1, men minst ett måste anges.
// TKB anger: "Utelämnas healthcare_facility_CareUnit är templateId obligatorisk" (villkorlig kardinalitet).
* healthcare_facility_CareUnit 0..1 Identifier "Vårdenhetens HSA-id" "Ägaren av formulärmall. Obligatorisk om templateId ej anges."
* templateId 0..1 string "Mall-id" "Mallens id. Obligatorisk om healthcare_facility_CareUnit ej anges."
* templateVersion 0..1 integer "Mallversion" "Mallens version. Utelämnas returneras samtliga versioner (ej arkiverade)."
