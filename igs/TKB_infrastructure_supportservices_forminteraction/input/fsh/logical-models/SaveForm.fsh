// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: SaveForm v2.0
// Genererad: 2026-05-19

Logical: SaveFormRequest
Id: saveform-request
Title: "SaveForm — Request"
Description: """
  Logisk modell för requestparametrar i SaveForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).
  Avslutar och sparar ett formulär. Formuläret byter status till COMPLETED.
"""
Characteristics: #can-be-target

* formId 1..1 string "Formulärets unika ID (GUID)"
* subjectOfCare 0..1 string "Invånarens personnummer (yyyymmddnnnn)"
* pageAnswer 0..1 BackboneElement "Sida med sista besvarade frågor (om ej redan sparade)"
  * pageNumber 1..1 integer "Sidans nummer"
  * questionBlock 1..* BackboneElement "Frågegrupperingar med svar"
    * question 1..* BackboneElement "Frågor med svar"
      * questionId 1..1 string "Frågans ID"
      * answer 0..1 BackboneElement "Invånarens svar"
        * answerText 0..1 string "Svarstext"
        * answeredAlternativeId 0..1 string "ID för valt svarsalternativ"


Logical: SaveForm
Id: saveform
Title: "SaveForm"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet SaveForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:SaveForm:2).
  Bekräftar att formuläret har avslutats och fått status COMPLETED.
  Formulärmotorn skickar notifiering till engagemangsindex (categorization = FormComplete).
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Svarskod (OK = formuläret har avslutats)"
* comment 0..1 string "Kommentar"
* formId 0..1 string "Formulärets unika ID (bekräftelse)"
