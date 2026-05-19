// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kodverk: AnswerType — typ av svar
// Genererad: 2026-05-19

CodeSystem: AnswerTypeCS
Id: answertype-cs
Title: "AnswerType"
Description: "Kodverk för typ av svar i ett formulär enligt infrastructure:supportservices:forminteraction v2.0."
* ^url = "https://fhir.inera.se/CodeSystem/answertype-cs"
* ^status = #active
* ^content = #fragment
// ASSUME: Fullständiga koder ej specificerade i TKB — fragment markerat.
* #STRING "Textsvar" "Svar i textformat"
* #INTEGER "Heltalssvar" "Svar i heltalsformat"
* #DECIMAL "Decimalsvar" "Svar i decimalformat"
* #DATE "Datumsvar" "Svar i datumformat"
* #BOOLEAN "Booleanskt svar" "Ja/nej-svar"
