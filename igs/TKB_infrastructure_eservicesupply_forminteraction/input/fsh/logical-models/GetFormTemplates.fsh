// Elementen genereras ur GetFormTemplatesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.0"
* formTemplates 0..* Base "FormTemplateInfoType" "formTemplates"
* formTemplates.anonymousForm 1..1 boolean "anonymousForm" "Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. Värden True = Tillåter anonym användning. \"SubjectOfCare\" får inte användas. False = Tillåter inte anonym användning. \"SubjectOfCare\" är obligatorisk attribut."
* formTemplates.category 1..1 string "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration" "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration"
* formTemplates.code 0..1 Base "CodeType" "code"
* formTemplates.code.codeValue 1..1 string "Kod som används (Kodverk).Kod identifieras av \"codeSystem\"." "Kod som används (Kodverk).Kod identifieras av \"codeSystem\"."
* formTemplates.code.codeSystem 1..1 string "Identifierar vilket kodverk som används." "Identifierar vilket kodverk som används."
* formTemplates.description 0..1 string "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen." "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen."
* formTemplates.formCompleteText 0..1 string "formCompleteText" "formCompleteText"
* formTemplates.formName 1..1 string "Mallens namn. T.ex. Hälsodeklaration Mödravård" "Mallens namn. T.ex. Hälsodeklaration Mödravård"
* formTemplates.formTitle 0..1 string "Mallens/formulärets rubrik. Används på formulärets introduktionssida." "Mallens/formulärets rubrik. Används på formulärets introduktionssida."
* formTemplates.language 1..1 string "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005." "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005."
* formTemplates.media 0..1 Base "MediaType" "media"
* formTemplates.media.mediaURL 1..1 string "URL eller adress till media." "URL eller adress till media."
* formTemplates.media.mediaType 1..1 string "Giltiga MIME typer." "Giltiga MIME typer."
* formTemplates.media.mediaAlt 0..1 string "alternativ text som beskriver det element som attributet hör till" "alternativ text som beskriver det element som attributet hör till"
* formTemplates.media.mediaCaption 0..1 string "URL eller adress till undertext." "URL eller adress till undertext."
* formTemplates.maxNumberOfQuestions 1..1 integer "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10" "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10"
* formTemplates.minNumberOfQuestions 1..1 integer "minNumberOfQuestions" "minNumberOfQuestions"
* formTemplates.maxNumberOfPages 1..1 integer "maxNumberOfPages" "maxNumberOfPages"
* formTemplates.minNumberOfPages 1..1 integer "minNumberOfPages" "minNumberOfPages"
* formTemplates.mandatory 1..1 boolean "mandatory" "Indikerar om formuläret är obligatoriskt att fylla i av användaren. T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. True = obligatoriskt False = Frivilligt"
* formTemplates.publishStatus 1..1 string "publishStatus" "publishStatus"
* formTemplates.templateVersion 1..1 integer "templateVersion" "templateVersion"
* formTemplates.templateId 1..1 string "templateId" "templateId"
* formTemplates.term 1..1 string "term" "Villkor kopplade till formuläret. T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras."

Logical: GetFormTemplatesRequest
Id: getformtemplates-request
Title: "GetFormTemplates — Request"
Description: "Logisk modell för requestparametrar i GetFormTemplates."
Characteristics: #can-be-target

* ^version = "2.0"
* clinicalProcessInterestIds 0..* string "clinicalProcessInterestIds" "clinicalProcessInterestIds"
* healthcare_facility_CareUnit 1..1 string "healthcare_facility_CareUnit" "healthcare_facility_CareUnit"
* publishedStatus 0..* string "Filtrering parameter för mall. Utelämnas attributet returneras alla" "Filtrering parameter för mall. Utelämnas attributet returneras alla"
* subjectOfCare 0..1 string "subjectOfCare" "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* templateIds 0..* string "templateIds" "templateIds"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFormTemplatesRequestFieldDescriptions
