// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: GetFormTemplates v2.0
// Genererad: 2026-05-19

Logical: GetFormTemplatesRequest
Id: getformtemplates-request
Title: "GetFormTemplates — Request"
Description: """
  Logisk modell för requestparametrar i GetFormTemplates
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2).
  Tjänst för att hämta tillgängliga formulärmallar för invånare.
"""
Characteristics: #can-be-target

* healthcareFacilityCareUnit 1..1 string "Hsa-Id för vårdenhet (enhets-id). T.ex. se2321000016-1hz3"
    """
    HSA-id för vårdenhet/enhets-id. Obligatoriskt.
    """
* publishedStatus 0..* CodeableConcept "Indikerar vilken status en mall skall ha"
    """
    Filtreringsparameter för mallens publiceringsstatus. Valfri, kan ange flera.
    """
* publishedStatus from PublishStatusVS (required)
* subjectOfCare 0..1 string "Starkt autentiserad användares personnummer (yyyymmddnnnn)"
    """
    Personnummer för den invånare formuläret avser. FormTemplate-attributet anonymousForm
    styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.
    """
* templateId 0..* string "Typ av formulärmall (kodverk KV Malltyp)"
    """
    Filtrerar svar på specifik formulärtyp. Om ej angiven returneras ALLA tillgängliga mallar.
    """
* clinicalProcessInterestId 0..* string "Hälsoärende — HSA-id för framställarens enhet/process + unik identifierare"
    """
    Globalt/nationellt hälsoärende ID. Filtrerar formulär kopplade till ett eller flera hälsoärenden.
    """


Logical: GetFormTemplates
Id: getformtemplates
Title: "GetFormTemplates"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet GetFormTemplates
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2).
  Returnerar lista med tillgängliga formulärmallar.
"""
Characteristics: #can-be-target

* formTemplate 0..* BackboneElement "Formulärmall (objekt FormTemplateInfoType)"
    """
    Lista med tillgängliga formulärmallar baserat på sökparametrarna. Tom lista = inga mallar hittades.
    """
  * anonymousForm 0..1 boolean "Tillåter anonym användning. True = SubjectOfCare ej obligatorisk"
  * category 1..1 CodeableConcept "Formulärets kategori (KV Formulärkategori)"
  * category from FormCategoryVS (required)
  * formCompleteText 0..1 string "Text som visas när formuläret är besvarat"
  * publishStatus 1..1 CodeableConcept "Mallens publiceringsstatus (KV Publicerings status)"
  * publishStatus from PublishStatusVS (required)
  * templateId 1..1 string "Typ av formulär — KV Malltyp (t.ex. MHV1 för Mödrahälsovårdsjournal)"
  * templateVersion 1..1 string "Mallens version"
  * mandatory 1..1 boolean "Om formuläret är obligatoriskt för användaren"
  * formLanguage 1..1 string "Språkkod enligt SS-ISO 639-1:2005 (t.ex. sv eller en)"
  * formTitle 0..1 string "Mallens/formulärets rubrik"
  * formName 1..1 string "Mallens namn (t.ex. Hälsodeklaration Mödravård)"
  * description 0..1 string "Formulärets beskrivning och instruktioner"
  * informationURL 0..1 url "URL till ytterligare/relevant information"
  * term 1..1 string "Villkor kopplade till formuläret"
  * maxNumberOfPages 1..1 integer "Maximalt antal sidor i formuläret"
  * minNumberOfPages 1..1 integer "Minimalt antal sidor i formuläret"
  * maxNumberOfQuestion 1..1 integer "Maximalt antal frågor i formuläret"
  * minNumberOfQuestion 1..1 integer "Minimalt antal frågor i formuläret"
