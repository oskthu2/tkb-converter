// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Domängemensamt kodverk (core_components/clinicalprocess_activityprescription_logistics_1.0.xsd)
// Genererad: 2026-09-26

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "resultCodeEnum"
Description: "Kodverk resultCodeEnum enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Resultatkod för anropet."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #OK "OK" "Anropet lyckades."
* #ERROR "ERROR" "Logiskt fel; beskrivande text anges i fältet comment."
* #INFO "INFO" "Anropet lyckades med information; se fältet comment."
