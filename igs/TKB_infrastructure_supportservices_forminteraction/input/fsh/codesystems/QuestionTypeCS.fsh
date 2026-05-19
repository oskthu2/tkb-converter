// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kodverk: QuestionType — typ av fråga i formulär
// Genererad: 2026-05-19

CodeSystem: QuestionTypeCS
Id: questiontype-cs
Title: "QuestionType"
Description: "Kodverk för typ av fråga (KV Frågetype) i ett formulär enligt infrastructure:supportservices:forminteraction v2.0."
* ^url = "https://fhir.inera.se/CodeSystem/questiontype-cs"
* ^status = #active
* ^content = #fragment
// ASSUME: Fullständiga koder ej specificerade i TKB — fragment markerat. Värdena nedan är hämtade från XSD:n.
* #RADIO "Radioknapp" "Fråga med ett svarsalternativ (radioknapp)"
* #CHECKBOX "Kryssruta" "Fråga med ett eller flera svarsalternativ (kryssruta)"
* #TEXT "Fritext" "Fritextfråga"
* #DATE "Datum" "Datumfråga"
* #NUMERIC "Numeriskt" "Numerisk fråga"
