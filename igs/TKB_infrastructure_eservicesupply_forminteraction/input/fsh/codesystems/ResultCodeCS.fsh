// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Genererad: 2026-05-19

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "KV Resultatkod"
Description: "Kodverk för resultatkod — anger status på en operation i formulärinteraktionstjänsterna."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Lyckat anrop."
* #INFO "Info" "Anropet lyckades men det finns information som behöver förmedlas till aktören/invånaren, exempelvis 'medtag legitimation vid besöket'."
* #ERROR "Fel" "Transaktionen misslyckades p g a logiskt fel."
