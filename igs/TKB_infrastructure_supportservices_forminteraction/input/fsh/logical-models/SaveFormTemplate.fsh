// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: SaveFormTemplate v2.0
// Genererad: 2026-05-19

Logical: SaveFormTemplateRequest
Id: saveformtemplate-request
Title: "SaveFormTemplate — Request"
Description: """
  Logisk modell för requestparametrar i SaveFormTemplate
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2).
  Sparar en formulärmall hos tjänsteproducenten.
"""
Characteristics: #can-be-target

* formTemplate 1..1 BackboneElement "Formulärmallen som skall sparas (FormTemplate)"
    """
    Komplett formulärmall med sidor och frågor. Se GetFormTemplate för detaljerad struktur.
    """
  * templateId 1..1 string "Mallens typ-id"
  * templateVersion 1..1 string "Mallens version"
  * formName 1..1 string "Mallens namn"
  * formTitle 0..1 string "Mallens rubrik"
  * description 0..1 string "Formulärets beskrivning"
  * descriptionInternal 0..1 string "Intern beskrivning för personal"
  * category 1..1 CodeableConcept "Formulärets kategori"
  * category from FormCategoryVS (required)
  * publishStatus 1..1 CodeableConcept "Publiceringsstatus"
  * publishStatus from PublishStatusVS (required)
  * mandatory 1..1 boolean "Om formuläret är obligatoriskt"
  * language 1..1 string "Språkkod"
  * anonymousForm 0..1 boolean "Om formuläret tillåter anonym användning"
  * healthcareFacilityUnit 1..1 string "HSA-id för mallens ägare"
  * pages 0..* BackboneElement "Sidor i mallen"
    * pageNumber 1..1 integer "Sidans nummer"
    * subject 0..1 string "Sidans rubrik"
    * templateQuestionBlock 1..* BackboneElement "Frågegrupperingsmallar"
      * blockNumber 1..1 integer "Blocknummer"
      * templateQuestion 1..* BackboneElement "Frågmallar"
        * questionId 1..1 string "Frågans ID"
        * questionText 1..1 string "Frågetext"
        * questionType 1..1 CodeableConcept "Typ av fråga"
        * questionType from QuestionTypeVS (required)
        * mandatory 1..1 boolean "Om frågan är obligatorisk"
        * answerAlternative 0..* BackboneElement "Svarsalternativ"
          * alternativeId 1..1 string "Alternativets ID"
          * alternativeText 1..1 string "Alternativets text"


Logical: SaveFormTemplate
Id: saveformtemplate
Title: "SaveFormTemplate"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet SaveFormTemplate
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormTemplate:2).
  Bekräftar att formulärmallen har sparats.
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Svarskod (OK = mallen har sparats)"
* comment 0..1 string "Kommentar"
* formTemplates 0..* BackboneElement "Sparade mallar (bekräftelse, FormTemplateType)"
    """
    ASSUME: TKB anger Response: FormTemplates [0..*] FormTemplateType — oklart om detta är
    en lista med alla mallar eller bara den sparade mallen. Antagande: det är en bekräftelse.
    """
  * templateId 1..1 string "Mallens typ-id"
  * templateVersion 1..1 string "Mallens version"
