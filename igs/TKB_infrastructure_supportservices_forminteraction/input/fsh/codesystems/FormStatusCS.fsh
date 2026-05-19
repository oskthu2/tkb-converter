// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kodverk: FormStatus — status på ett formulär
// Genererad: 2026-05-19

CodeSystem: FormStatusCS
Id: formstatus-cs
Title: "FormStatus"
Description: "Kodverk för formulärets status (KV Form Status) enligt infrastructure:supportservices:forminteraction v2.0."
* ^url = "https://fhir.inera.se/CodeSystem/formstatus-cs"
* ^status = #active
* ^content = #complete
* #COMPLETED "COMPLETED" "Avslutat. Formuläret är besvarat och avslutat av invånaren. Konsumerande system kan endast visa formulär i läsläge."
* #ONGOING "ONGOING" "Pågående — frågor har temporärsparats."
* #PENDING_COMPLETION "PENDING_COMPLETION" "Pågående — frågor har temporärsparats. Alla frågor är besvarade. Formuläret byter status till COMPLETED via SaveForm."
