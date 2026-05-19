// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: GetFormTemplate v2.0
// Genererad: 2026-05-19

Logical: GetFormTemplateRequest
Id: getformtemplate-request
Title: "GetFormTemplate — Request"
Description: """
  Logisk modell för requestparametrar i GetFormTemplate
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2).
  Hämtar en specifik formulärmall inkl. alla sidor och frågor.
"""
Characteristics: #can-be-target

* healthcareFacilityCareUnit 1..1 string "HSA-id för vårdenhet"
* templateId 1..1 string "Typ av formulärmall (KV Malltyp)"
* templateVersion 0..1 string "Önskad version"


Logical: GetFormTemplate
Id: getformtemplate
Title: "GetFormTemplate"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet GetFormTemplate
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplate:2).
  Returnerar komplett formulärmall inkl. alla sidor, frågegrupperingar och frågor.
"""
Characteristics: #can-be-target

* formTemplate 0..1 BackboneElement "Formulärmall (FormTemplate — komplett med sidor)"
    """
    Komplett formulärmall. Saknas mallen returneras tomt svar.
    """
  * templateId 1..1 string "Mallens typ-id"
  * templateVersion 1..1 string "Mallens version"
  * formName 1..1 string "Mallens namn"
  * formTitle 0..1 string "Mallens rubrik"
  * description 0..1 string "Formulärets beskrivning och instruktioner"
  * descriptionInternal 0..1 string "Beskrivning avsedd för personal"
  * category 1..1 CodeableConcept "Formulärets kategori"
  * category from FormCategoryVS (required)
  * publishStatus 1..1 CodeableConcept "Publiceringsstatus"
  * publishStatus from PublishStatusVS (required)
  * mandatory 1..1 boolean "Om formuläret är obligatoriskt"
  * language 1..1 string "Språkkod (SS-ISO 639-1:2005)"
  * anonymousForm 0..1 boolean "Om formuläret tillåter anonym användning"
  * term 1..1 string "Villkorstext"
  * informationURL 0..1 url "URL till ytterligare information"
  * healthcareFacilityUnit 1..1 string "HSA-id för mallens ägare"
  * maxNumberOfPages 1..1 integer "Maximalt antal sidor"
  * minNumberOfPages 1..1 integer "Minimalt antal sidor"
  * maxNumberOfQuestion 1..1 integer "Maximalt antal frågor"
  * minNumberOfQuestion 1..1 integer "Minimalt antal frågor"
  * templatePropagate 0..* BackboneElement "Malldelning (om mallen delas)"
    * targetCareUnit 1..1 string "HSA-id för enhet som mallen delas med"
  * pages 0..* BackboneElement "Sidor i mallen (TemplatePage)"
    * pageNumber 1..1 integer "Sidans nummer"
    * subject 0..1 string "Sidans rubrik"
    * description 0..1 string "Sidans beskrivning"
    * templateQuestionBlock 1..* BackboneElement "Frågegrupperingsmallar (TemplateQuestionBlock)"
      * blockNumber 1..1 integer "Blocknummer"
      * subject 0..1 string "Blockets rubrik"
      * description 0..1 string "Blockets beskrivning"
      * numberOfQuestions 1..1 integer "Antal frågor"
      * templateQuestion 1..* BackboneElement "Frågmallar (TemplateQuestion)"
        * questionId 1..1 string "Frågans unika ID i mallen"
        * questionText 1..1 string "Frågetext"
        * questionType 1..1 CodeableConcept "Typ av fråga"
        * questionType from QuestionTypeVS (required)
        * mandatory 1..1 boolean "Om frågan är obligatorisk"
        * answerAlternative 0..* BackboneElement "Svarsalternativ"
          * alternativeId 1..1 string "Svarsalternativets ID"
          * alternativeText 1..1 string "Svarsalternativets text"
