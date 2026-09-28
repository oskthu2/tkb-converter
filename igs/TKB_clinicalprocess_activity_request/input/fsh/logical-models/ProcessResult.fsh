// Genererad från TKB clinicalprocess:activity:request v2.2
// Gemensamt svar (ResultType) för ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome
// Genererad: 2026-09-26

Invariant: processresult-errorcode-only-on-error
Description: "errorCode sätts endast när resultCode är ERROR"
Expression: "errorCode.exists() implies resultCode = 'ERROR'"
Severity: #error

Logical: ProcessResult
Id: process-result
Title: "Process* — Svar (ResultType)"
Description: """
  Logisk modell för svaret i ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome (ProcessRequest*ResponseType.result av typen ResultType). Beskriver om begäran gick bra eller ej, se avsnitt 4.3 Felhantering.
"""
Characteristics: #can-be-target
* obeys processresult-errorcode-only-on-error
* resultCode 1..1 code "Resultatkod" "OK, INFO eller ERROR."
* resultCode from ResultCodeVS (required)
* errorCode 0..1 code "Felkod" "VALIDATION_ERROR eller APPLICATION_ERROR. Sätts endast när resultCode är ERROR."
* errorCode from ErrorCodeVS (required)
* subCode 0..1 string "Underkod" "Standardiserad felkod för logiska fel, se 4.3.1.1 Logiska fel – tabell Felkoder."
* logId 0..1 string "Logg-id" "Unikt log-id för felsökning hos producenten."
* message 0..1 string "Meddelande" "Beskrivande text som kan visas för användaren."
