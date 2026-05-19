// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: FindAllAnswers v1.0
// Genererad: 2026-05-19

Logical: FindAllAnswersRequest
Id: findallanswers-request
Title: "FindAllAnswers — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).
  Returnerar svar från FK på tidigare skickade frågor från vården.
"""
Characteristics: #can-be-target

* careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
* careGiverId 1..1 Identifier "Vårdgivarens HSA-id"


Logical: FindAllAnswers
Id: findallanswers
Title: "FindAllAnswers"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
* answersLeft 1..1 integer "Antal kvarvarande svar för denna vårdenhet"
* answers 0..1 BackboneElement "Svar"
* answers.answer 0..* BackboneElement "Lista av svar"
* answers.answer.id 1..1 integer "Ärendelådans identitet på det returnerade svaret"
  """
  Används när man vill ta bort svaret från ärendelådan via DeleteAnswers.
  """
* answers.answer.receivedDate 1..1 date "Datum då svaret inkom"
* answers.answer.answerData 1..1 BackboneElement "Själva svaret (se ReceiveMedicalCertificateAnswer)"
