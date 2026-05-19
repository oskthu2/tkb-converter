// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: FindAllQuestions v1.0
// Genererad: 2026-05-19

Logical: FindAllQuestionsRequest
Id: findallquestions-request
Title: "FindAllQuestions — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).
  Returnerar frågor från FK som mellanlagrats av vården.
"""
Characteristics: #can-be-target

* careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
  """
  system = urn:oid:1.2.752.129.2.1.4.1 (HSA-ID).
  """
* careGiverId 1..1 Identifier "Vårdgivarens HSA-id"


Logical: FindAllQuestions
Id: findallquestions
Title: "FindAllQuestions"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
* questionsLeft 1..1 integer "Antal kvarvarande frågor för denna vårdenhet"
* questions 0..1 BackboneElement "Frågor"
* questions.question 0..* BackboneElement "Lista av frågor"
* questions.question.id 1..1 integer "Ärendelådans identitet på den returnerade frågan"
  """
  Används när man vill ta bort frågan från ärendelådan via DeleteQuestions.
  """
* questions.question.receivedDate 1..1 date "Datum då frågan inkom"
* questions.question.questionData 1..1 BackboneElement "Själva frågan (se ReceiveMedicalCertificateQuestion)"
