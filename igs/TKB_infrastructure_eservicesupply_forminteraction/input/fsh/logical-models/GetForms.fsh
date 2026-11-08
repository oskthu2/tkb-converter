// Elementen genereras ur GetFormsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: GetForms v2.0
// Genererad: 2026-05-19

Logical: GetForms
Id: getforms
Title: "GetForms"
Description: """
  Logisk modell för tjänstekontraktet GetForms
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2).
  Representerar responsens informationsstruktur — returnerar lista med pågående/avslutade formulär.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* forms 0..* Base "FormsType" "forms"
* forms.createdDateTime 1..1 string "createdDateTime" "createdDateTime"
* forms.expireDate 0..1 string "expireDate" "expireDate"
* forms.formId 1..1 string "formId" "formId"
* forms.formStatus 1..1 code "formStatus" "formStatus Tillåtna värden: COMPLETED, PENDING_COMPLETION, ONGOING."
* forms.formStatus from FormStatusVS (required)
* forms.healthcare_CareGiver 0..1 string "healthcare_CareGiver" "healthcare_CareGiver"
* forms.healthcare_MedUnit 0..1 string "healthcare_MedUnit" "healthcare_MedUnit"
* forms.healthcare_facility_CareUnit 1..1 string "healthcare_facility_CareUnit" "healthcare_facility_CareUnit"
* forms.healthcare_facility_CareUnitName 1..1 string "healthcare_facility_CareUnitName" "healthcare_facility_CareUnitName"
* forms.healthcare_systemID 0..1 string "healthcare_systemID" "healthcare_systemID"
* forms.clinicalProcessInterestId 0..1 string "clinicalProcessInterestId" "clinicalProcessInterestId"
* forms.keepUntil 1..1 string "keepUntil" "keepUntil"
* forms.lastSavedDate 0..1 string "lastSavedDate" "lastSavedDate"
* forms.subjectOfCare 0..1 string "subjectOfCare" "subjectOfCare"
* forms.formTemplate 1..1 Base "FormTemplateInfoType" "formTemplate"
* forms.formTemplate.anonymousForm 1..1 boolean "anonymousForm" "Attributet styr huruvida formulärmotorn stöder anonym användning av formuläret. Värden True = Tillåter anonym användning. \"SubjectOfCare\" får inte användas. False = Tillåter inte anonym användning. \"SubjectOfCare\" är obligatorisk attribut."
* forms.formTemplate.category 1..1 string "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration" "Formulärets kategori T.ex. Anmälan, registrering, hälsodeklaration"
* forms.formTemplate.code 0..1 Base "CodeType" "code"
* forms.formTemplate.code.codeValue 1..1 string "Kod som används (Kodverk).Kod identifieras av \"codeSystem\"." "Kod som används (Kodverk).Kod identifieras av \"codeSystem\"."
* forms.formTemplate.code.codeSystem 1..1 string "Identifierar vilket kodverk som används." "Identifierar vilket kodverk som används."
* forms.formTemplate.description 0..1 string "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen." "Formulärets beskrivning och instruktioner. T.ex. Formuläret skall besvaras innan du besöker mottageningen."
* forms.formTemplate.formCompleteText 0..1 string "formCompleteText" "formCompleteText"
* forms.formTemplate.formName 1..1 string "Mallens namn. T.ex. Hälsodeklaration Mödravård" "Mallens namn. T.ex. Hälsodeklaration Mödravård"
* forms.formTemplate.formTitle 0..1 string "Mallens/formulärets rubrik. Används på formulärets introduktionssida." "Mallens/formulärets rubrik. Används på formulärets introduktionssida."
* forms.formTemplate.language 1..1 string "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005." "Kodverk för språk Innehåller språkkoder som utgår från SS-ISO 639-1:2005."
* forms.formTemplate.media 0..1 Base "MediaType" "media"
* forms.formTemplate.media.mediaURL 1..1 string "URL eller adress till media." "URL eller adress till media."
* forms.formTemplate.media.mediaType 1..1 string "Giltiga MIME typer." "Giltiga MIME typer."
* forms.formTemplate.media.mediaAlt 0..1 string "alternativ text som beskriver det element som attributet hör till" "alternativ text som beskriver det element som attributet hör till"
* forms.formTemplate.media.mediaCaption 0..1 string "URL eller adress till undertext." "URL eller adress till undertext."
* forms.formTemplate.maxNumberOfQuestions 1..1 integer "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10" "Beskriver hur många frågor formuläret maximalt kan innehåller. T.ex. 10"
* forms.formTemplate.minNumberOfQuestions 1..1 integer "minNumberOfQuestions" "minNumberOfQuestions"
* forms.formTemplate.maxNumberOfPages 1..1 integer "maxNumberOfPages" "maxNumberOfPages"
* forms.formTemplate.minNumberOfPages 1..1 integer "minNumberOfPages" "minNumberOfPages"
* forms.formTemplate.mandatory 1..1 boolean "mandatory" "Indikerar om formuläret är obligatoriskt att fylla i av användaren. T.ex. Ett obligatoriskt formulär kan indikerar att formuläret är en del av en vårdprocess. True = obligatoriskt False = Frivilligt"
* forms.formTemplate.publishStatus 1..1 string "publishStatus" "publishStatus"
* forms.formTemplate.templateVersion 1..1 integer "templateVersion" "templateVersion"
* forms.formTemplate.templateId 1..1 string "templateId" "templateId"
* forms.formTemplate.term 1..1 string "term" "Villkor kopplade till formuläret. T.ex. Villkorstext som användaren/patienten måste godkänna innan formuläret kan besvaras."

Logical: GetFormsRequest
Id: getforms-request
Title: "GetForms — Request"
Description: "Logisk modell för requestparametrar i GetForms."
Characteristics: #can-be-target

* ^version = "2.0"
* clinicalProcessInterestIds 0..* string "clinicalProcessInterestIds" "clinicalProcessInterestIds"
* healthcare_facility_CareUnit 0..1 string "healthcare_facility_CareUnit" "healthcare_facility_CareUnit"
* subjectOfCare 0..1 string "subjectOfCare" "Autentiserad invånare (personnummer). FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* templateIds 0..* string "templateIds" "templateIds"
