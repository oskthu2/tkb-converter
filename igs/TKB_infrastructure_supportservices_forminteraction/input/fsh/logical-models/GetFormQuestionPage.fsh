// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: GetFormQuestionPage v2.0
// Genererad: 2026-05-19

Logical: GetFormQuestionPageRequest
Id: getformquestionpage-request
Title: "GetFormQuestionPage — Request"
Description: """
  Logisk modell för requestparametrar i GetFormQuestionPage
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2).
  Hoppa/navigera framåt eller bakåt i ett formulär.
"""
Characteristics: #can-be-target

* formId 1..1 string "Formulärets unika ID (GUID)"
* pageNumber 1..1 integer "Nummer på sidan navigering utgår ifrån. Ange 0 + FORWARD för första sidan, 0 + BACK för sista sidan."
* direction 1..1 string "Riktning: FORWARD eller BACK"
    """
    BACK ej tillåtet om PageNumber = 1. FORWARD ej tillåtet om LastPage = true.
    """
* subjectOfCare 0..1 string "Invånarens personnummer (yyyymmddnnnn)"


Logical: GetFormQuestionPage
Id: getformquestionpage
Title: "GetFormQuestionPage"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet GetFormQuestionPage
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormQuestionPage:2).
  Returnerar formuläret med den begärda sidan.
"""
Characteristics: #can-be-target

* form 0..1 BackboneElement "Formulärobjekt med navigerad sida (FormType)"
    """
    Formuläret med den navigerade sidan. Vid fel (ogiltigt sidnummer/riktning) returneras SOAP-fault.
    """
  * formId 1..1 string "Formulärets unika ID"
  * formStatus 1..1 CodeableConcept "Formulärets status"
  * formStatus from FormStatusVS (required)
  * currentPage 0..1 BackboneElement "Den begärda sidan med frågor"
    * pageNumber 1..1 integer "Sidans nummer"
    * subject 0..1 string "Sidans rubrik"
    * lastPage 1..1 boolean "True = sista sidan i formuläret"
    * questionBlock 1..* BackboneElement "Frågegruppering(ar)"
      * blockNumber 1..1 integer "Blocknummer"
      * subject 0..1 string "Blockets rubrik"
      * question 1..* BackboneElement "Frågor i blocket"
        * questionId 1..1 string "Frågans unika ID"
        * questionText 1..1 string "Frågetext"
        * answer 0..1 BackboneElement "Eventuellt befintligt svar"
          * answerText 0..1 string "Svarstext"
