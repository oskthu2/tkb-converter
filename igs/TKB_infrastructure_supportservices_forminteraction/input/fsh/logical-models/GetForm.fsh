// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: GetForm v2.0
// Genererad: 2026-05-19

Logical: GetFormRequest
Id: getform-request
Title: "GetForm — Request"
Description: """
  Logisk modell för requestparametrar i GetForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2).
  Hämtar ett specifikt formulär inkl. aktuell sida med frågor.
"""
Characteristics: #can-be-target

* formId 1..1 string "Formulärets unika ID (GUID)"
* subjectOfCare 0..1 string "Invånarens personnummer (yyyymmddnnnn)"


Logical: GetForm
Id: getform
Title: "GetForm"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet GetForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForm:2).
  Returnerar ett specifikt formulär med aktuell sida och frågor.
  COMPLETED = Läsläge (komplett formulär returneras).
  ONGOING = Senaste/aktuella sida returneras.
  PENDING_COMPLETION = Senaste sida returneras.
"""
Characteristics: #can-be-target

* form 0..1 BackboneElement "Formulärobjekt med aktuell sida (FormType)"
    """
    Det hämtade formuläret inkl. aktuell sida. Saknas formuläret returneras SOAP-fault.
    """
  * formId 1..1 string "Formulärets unika ID (GUID)"
  * subjectOfCare 1..1 string "Patientens personnummer"
  * healthcareFacilityCareUnit 1..1 string "HSA-id för vårdenhet"
  * healthcareFacilityCareUnitName 1..1 string "Vårdenhetens namn"
  * formStatus 1..1 CodeableConcept "Formulärets status"
  * formStatus from FormStatusVS (required)
  * createdDateTime 1..1 string "Datum när formuläret skapades"
  * lastSavedDate 0..1 string "Datum för senaste temporärsparning"
  * expireDate 0..1 string "Formulärets giltighetstid"
  * formText 0..1 string "Unik text för formuläret"
  * formTemplate 1..1 BackboneElement "Formulärmall"
    * templateId 1..1 string "Mallens typ-id"
    * templateVersion 1..1 string "Mallens version"
    * formName 1..1 string "Mallens namn"
  * currentPage 0..1 BackboneElement "Aktuell sida med frågor (Page)"
    """
    ONGOING/PENDING_COMPLETION: sista ifyllda sidan. COMPLETED: hela formuläret (alla sidor).
    """
    * pageNumber 1..1 integer "Sidans nummer"
    * subject 0..1 string "Sidans rubrik"
    * lastPage 1..1 boolean "True = sista sidan i formuläret"
    * informationURL 0..1 url "URL till hjälpsida"
    * questionBlock 1..* BackboneElement "Frågegruppering(ar) på sidan"
      * blockNumber 1..1 integer "Blocknummer"
      * subject 0..1 string "Blockets rubrik"
      * numberOfQuestions 1..1 integer "Antal frågor i blocket"
      * question 1..* BackboneElement "Frågor i blocket"
        * questionId 1..1 string "Frågans unika ID"
        * questionText 1..1 string "Frågetexten"
        * questionType 1..1 CodeableConcept "Typ av fråga"
        * questionType from QuestionTypeVS (required)
        * mandatory 1..1 boolean "Om frågan är obligatorisk"
        * answerAlternative 0..* BackboneElement "Svarsalternativ"
          * alternativeId 1..1 string "Svarsalternativets ID"
          * alternativeText 1..1 string "Svarsalternativets text"
        * answer 0..1 BackboneElement "Givet svar (om formuläret är påbörjat/avslutat)"
          * answerText 0..1 string "Svarstext"
          * answeredAlternativeId 0..1 string "ID för valt svarsalternativ"
