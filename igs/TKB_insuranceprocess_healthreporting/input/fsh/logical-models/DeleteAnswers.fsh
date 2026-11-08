// Elementen genereras ur DeleteAnswersResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* careUnitId 1..1 Base "II" "careUnitId"
* careUnitId.root 0..1 string "root" "root (XML-attribut)"
* careUnitId.extension 0..1 string "extension" "extension (XML-attribut)"
* careUnitId.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* careGiverId 1..1 Base "II" "careGiverId"
* careGiverId.root 0..1 string "root" "root (XML-attribut)"
* careGiverId.extension 0..1 string "extension" "extension (XML-attribut)"
* careGiverId.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* AnswerId 1..* string "AnswerId" "AnswerId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteAnswersRequestFieldDescriptions

Logical: DeleteAnswers
Id: deleteanswers
Title: "DeleteAnswers"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert DeleteAnswersFieldDescriptions
