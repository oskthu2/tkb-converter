// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: SaveFormPage v2.0
// Genererad: 2026-05-19

Logical: SaveFormPageRequest
Id: saveformpage-request
Title: "SaveFormPage — Request"
Description: """
  Logisk modell för requestparametrar i SaveFormPage
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2).
  Sparar invånarens besvarade frågor på en sida under pågående formulärsession.
  Om temporarySave anges: spara utan validering, returnera samma sida.
"""
Characteristics: #can-be-target

* formId 1..1 string "Formulärets unika ID (GUID)"
* subjectOfCare 0..1 string "Invånarens personnummer (yyyymmddnnnn)"
* pageAnswer 1..1 BackboneElement "Sida med besvarade frågor att spara"
    """
    Innehåller sidans nummer och alla svar som invånaren har lämnat.
    """
  * pageNumber 1..1 integer "Sidans nummer"
  * questionBlock 1..* BackboneElement "Frågegrupperingar med svar"
    * question 1..* BackboneElement "Frågor med svar"
      * questionId 1..1 string "Frågans ID"
      * answer 0..1 BackboneElement "Invånarens svar"
        * answerText 0..1 string "Svarstext"
        * answeredAlternativeId 0..1 string "ID för valt svarsalternativ"
* temporarySave 0..1 boolean "Om true: temporärspara utan validering och returnera samma sida"


Logical: SaveFormPage
Id: saveformpage
Title: "SaveFormPage"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet SaveFormPage
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveFormPage:2).
  Returnerar nästa sida med frågor (eller samma sida vid temporarySave).
  Vid valideringsfel returneras felindikering via ResultCode och AnswerStatus.
"""
Characteristics: #can-be-target

* form 0..1 BackboneElement "Formuläret med nästa sida (eller samma sida vid temporarySave)"
  * formId 1..1 string "Formulärets unika ID"
  * formStatus 1..1 CodeableConcept "Formulärets status"
  * formStatus from FormStatusVS (required)
  * currentPage 0..1 BackboneElement "Nästa/aktuella sida med frågor"
    * pageNumber 1..1 integer "Sidans nummer"
    * subject 0..1 string "Sidans rubrik"
    * lastPage 1..1 boolean "True = sista sidan"
    * questionBlock 1..* BackboneElement "Frågegrupperingar"
      * question 1..* BackboneElement "Frågor med eventuell felindikering"
        * questionId 1..1 string "Frågans ID"
        * questionText 1..1 string "Frågetext"
        * answerStatus 0..1 BackboneElement "Valideringsstatus (vid fel)"
          * resultCode 1..1 string "Svarskod: OK, ERROR etc."
          * comment 0..1 string "Kommentar/felbeskrivning"
