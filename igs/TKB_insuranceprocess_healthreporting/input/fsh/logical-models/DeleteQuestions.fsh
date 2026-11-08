// Elementen genereras ur DeleteQuestionsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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
* careUnitId 1..1 Base "II" "careUnitId"
* careUnitId.root 0..1 string "root" "root (XML-attribut)"
* careUnitId.extension 0..1 string "extension" "extension (XML-attribut)"
* careUnitId.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* careGiverId 1..1 Base "II" "careGiverId"
* careGiverId.root 0..1 string "root" "root (XML-attribut)"
* careGiverId.extension 0..1 string "extension" "extension (XML-attribut)"
* careGiverId.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* questionId 1..* string "questionId" "questionId"

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
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteQuestionsFieldDescriptions
