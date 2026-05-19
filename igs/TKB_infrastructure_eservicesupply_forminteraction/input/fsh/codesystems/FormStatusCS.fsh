// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Genererad: 2026-05-19

CodeSystem: FormStatusCS
Id: formstatus-cs
Title: "KV Form Status"
Description: "Kodverk för formulärets status. Definierar i vilken fas ett formulär befinner sig."
* ^url = "https://fhir.inera.se/CodeSystem/formstatus-cs"
* ^status = #active
* ^content = #complete
* #ONGOING "Pågående" "Formulär skapat/formulärbegäran skapad. Pågående, frågor har temporärsparats."
* #PENDING_COMPLETION "Väntar på avslut" "Pågående, frågor har temporärsparats. Alla frågor är besvarade."
* #COMPLETED "Avslutad" "Formuläret är besvarat och avslutat av invånaren."
