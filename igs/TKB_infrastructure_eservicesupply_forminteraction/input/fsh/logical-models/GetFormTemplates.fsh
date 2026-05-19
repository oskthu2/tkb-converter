// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: GetFormTemplates v2.0
// Genererad: 2026-05-19

Logical: GetFormTemplates
Id: getformtemplates
Title: "GetFormTemplates"
Description: """
  Logisk modell för tjänstekontraktet GetFormTemplates
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormTemplates:2).
  Representerar responsens informationsstruktur — returnerar tillgängliga formulärmallar för invånare.
"""
Characteristics: #can-be-target

* formTemplate 0..* BackboneElement "Formulärmall (FormTemplateType)" "Lista med formulärmallar som matchar sökkriterierna."
  * templateId 1..1 string "Mall-id" "Typ av formulär. Kodverk för standardiserade id för formulärtyper."
  * templateVersion 1..1 integer "Mallens version" "Versionsnummer för formulärmallen."
  * anonymousForm 0..1 boolean "Anonym formulär" "Styr huruvida formulärmotorn stöder anonym användning av formuläret."
  * category 1..1 CodeableConcept "Formulärkategori" "Formulärets kategori, t.ex. Anmälan, registrering, hälsodeklaration."
  * category from FormCategoryVS (required)
  * publishStatus 1..1 CodeableConcept "Publiceringsstatus" "Mallens publiceringsstatus."
  * publishStatus from PublishStatusVS (required)
  * mandatory 1..1 boolean "Obligatorisk" "Indikerar om formuläret är obligatoriskt att fylla i av användaren."
  * language 1..1 string "Språk" "Beskriver vilket språk som används i formuläret, t.ex. swe eller eng."
  * formCompleteText 0..1 string "Avslutningstext" "Text som visas för invånaren när formuläret är besvarat."
  * code 0..1 BackboneElement "Kod" "Koppling till klass för code. Används för att beskriva t.ex. formulärinstrument (AUDIT-C, PHQ-9, EQ-5D)."
    * codeSystem 0..1 string "Kodsystem" "Kodsystemets identifierare."
    * codeValue 0..1 string "Kodvärde" "Kodvärdet inom kodsystemet."
    * displayName 0..1 string "Visningsnamn" "Visningsnamn för koden."

Logical: GetFormTemplatesRequest
Id: getformtemplates-request
Title: "GetFormTemplates — Request"
Description: "Logisk modell för requestparametrar i GetFormTemplates."
Characteristics: #can-be-target

* healthcare_Facility_CareUnit 1..1 Identifier "Vårdenhetens HSA-id" "Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3."
* publishedStatus 0..* CodeableConcept "Publiceringsstatus" "Indikerar vilken status en mall skall ha."
* publishedStatus from PublishStatusVS (required)
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn)."
* templateIds 0..* string "Mall-id:n" "Typ av formulärmall. Om denna inte anges returneras ALLA tillgängliga formulärmallar för medborgaren."
* clinicalProcessInterestIds 0..* Identifier "Hälsoärenden" "Hälsoärende-id:n för filtrering."
