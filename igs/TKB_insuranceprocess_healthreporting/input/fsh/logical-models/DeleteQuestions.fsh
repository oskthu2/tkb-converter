// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: DeleteQuestions v1.0
// Genererad: 2026-05-19

Logical: DeleteQuestionsRequest
Id: deletequestions-request
Title: "DeleteQuestions — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeleteQuestions
  (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1).
  Tar bort frågor som mellanlagrats av vården och tidigare hämtats via FindAllQuestions.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
* careGiverId 1..1 Identifier "Vårdgivarens HSA-id"
* questionId 0..* string "Ärendelådans identitet på frågor som skall tas bort"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteQuestionsRequestFieldDescriptions


Logical: DeleteQuestions
Id: deletequestions
Title: "DeleteQuestions"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteQuestions
  (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteQuestionsFieldDescriptions
