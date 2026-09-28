// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Gemensamt resultat (ResultType) för domänens kontrakt
// Genererad: 2026-09-26

Invariant: interpretation-result-errorcode-on-error
Description: "errorCode anges bara när resultCode är ERROR"
Expression: "errorCode.exists() implies resultCode = 'ERROR'"
Severity: #error

Logical: InterpretationResult
Id: interpretation-result
Title: "Resultat (ResultType)"
Description: """
  Logisk modell för ResultType, som returneras av AnswerInquiry, CreateBooking och UpdateBooking. Se avsnitt 4.3 Felhantering.
"""
Characteristics: #can-be-target
* obeys interpretation-result-errorcode-on-error
* resultCode 1..1 code "Resultatkod" "OK, INFO eller ERROR."
* resultCode from ResultCodeVS (required)
* errorCode 0..1 code "Felkod" "ErrorCodeEnum, se Regel #11 Logiska fel [R4]."
* errorCode from ErrorCodeVS (required)
* subcode 0..1 string "Underkod" "Ytterligare felkod."
* logId 1..1 string "Logg-id" "Unikt log-id för felsökning."
* message 0..1 string "Meddelande" "Beskrivande text."
