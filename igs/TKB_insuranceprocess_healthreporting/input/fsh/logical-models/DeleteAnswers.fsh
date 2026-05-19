// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: DeleteAnswers v1.0
// Genererad: 2026-05-19

Logical: DeleteAnswersRequest
Id: deleteanswers-request
Title: "DeleteAnswers — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeleteAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).
  Tar bort svar som mellanlagrats av vården och tidigare hämtats via FindAllAnswers.
"""
Characteristics: #can-be-target

* careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
* careGiverId 1..1 Identifier "Vårdgivarens HSA-id"
* answerId 0..* string "Ärendelådans identitet på svar som skall tas bort"


Logical: DeleteAnswers
Id: deleteanswers
Title: "DeleteAnswers"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
